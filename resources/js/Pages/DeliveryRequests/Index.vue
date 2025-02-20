<template>


<Head title="Delivery Requests" />

    <div class="mx-auto p-6">
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-2xl font-bold">Delivery Requests</h2>
        </div>

        <!-- show successful message -->
        <div v-if="status" class="text-green-500 bg-green-100 py-2 px-4 border border-green-600 rounded my-5">
            {{ status }}
        </div>

        <div class="bg-white shadow-md rounded px-8 pt-6 pb-8">
            <div class="overflow-x-auto">
                <table class="min-w-full table-auto">
                    <thead>
                        <tr class="bg-gray-100">
                            <th class="px-4 py-2 border-2">ID</th>
                            <th class="px-4 py-2 border-2">Pickup name</th>
                            <th class="px-4 py-2 border-2">Delivery name</th>
                            <th class="px-4 py-2 border-2">Status</th>
                            <th class="px-4 py-2 border-2">Priority</th>
                            <th class="px-4 py-2 border-2">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="delivery in deliveryRequests.data" :key="delivery.id">
                            <td class="border px-4 py-2" align="center">{{ delivery.id }}</td>
                            <td class="border px-4 py-2" align="center">
                                {{ delivery.pickup_name }}
                            </td>
                            <td class="border px-4 py-2" align="center">
                                {{ delivery.delivery_name }}
                            </td>
                            <td class="border px-4 py-2" align="center">
                                <span :class="{
                                    'bg-yellow-100 text-yellow-800': delivery.status === 'Pending',
                                    'bg-blue-100 text-blue-800': delivery.status === 'Processing',
                                    'bg-green-100 text-green-800': delivery.status === 'Shipped',
                                    'bg-red-100 text-red-800': delivery.status === 'Cancelled',
                                }">
                                    {{ delivery.status }}
                                </span>
                            </td>
                            <td class="border px-4 py-2" align="center">
                                {{ delivery.priority }}
                            </td>
                            <td class="border px-4 py-2" align="center">
                                <button v-if="delivery.status === 'Pending'" @click="cancelDelivery(delivery)"
                                    class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-3 rounded">
                                    Cancel
                                </button>

                                <span v-else>N/A</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="flex justify-end py-3">
                <Link v-for="link in deliveryRequests.links" :key="link.label" v-html="link.label" :href="link.url"
                    class="p-1 mx-1" :class="{
                        'text-slate-800': !link.url,
                        'text-blue-400': link.active,
                    }">
                </Link>
            </div>
        </div>
    </div>
</template>

<script setup>
import { router } from "@inertiajs/vue3";

defineProps({
    deliveryRequests: Object,
    status: String,
});

const cancelDelivery = (delivery) => {
    if (confirm("Are you sure you want to cancel this delivery request?")) {
        router.patch(route("delivery-requests.cancel", delivery.id));
    }
};
</script>
