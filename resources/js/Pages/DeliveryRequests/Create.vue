<template>
    <Head title=" Create" />

    <div class="max-w-4xl mx-auto p-6">
        <form @submit.prevent="submit" class="space-y-6">
            <div class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
                <h2 class="text-2xl font-bold mb-4">Delivery Information</h2>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup address
                        </label>
                        <input v-model="form.pickup_address" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_address" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_address }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup name
                        </label>
                        <input v-model="form.pickup_name" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_name" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_name }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup contact number
                        </label>
                        <input v-model="form.pickup_contact_no" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_contact_no" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_contact_no }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup email
                        </label>
                        <input v-model="form.pickup_email" type="email"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_email" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_email }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Delivery address
                        </label>
                        <input v-model="form.delivery_address" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.delivery_address" class="text-red-500 text-xs mt-1">
                            {{ form.errors.delivery_address }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Delivery name
                        </label>
                        <input v-model="form.delivery_name" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.delivery_name" class="text-red-500 text-xs mt-1">
                            {{ form.errors.delivery_name }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Delivery contact number
                        </label>
                        <input v-model="form.delivery_contact_no" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.delivery_contact_no" class="text-red-500 text-xs mt-1">
                            {{ form.errors.delivery_contact_no }}
                        </div>


                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Delivery email
                        </label>
                        <input v-model="form.delivery_email" type="email"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.delivery_email" class="text-red-500 text-xs mt-1">
                            {{ form.errors.delivery_email }}
                        </div>


                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Type of good
                        </label>
                        <select v-model="form.goods_type" class="shadow border rounded w-full py-2 px-3 text-gray-700 ">
                            <option value="null" disabled selected>Choose type of good</option>
                            <option v-for="goodType in goodTypes" :value="goodType">{{ goodType }}</option>

                        </select>
                        <div v-if="form.errors.goods_type" class="text-red-500 text-xs mt-1">
                            {{ form.errors.goods_type }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Delivery provider
                        </label>
                        <select v-model="form.delivery_provider"
                            class="shadow border rounded w-full py-2 px-3 text-gray-700  ">
                            <option value="null" disabled selected>Choose delivery provider</option>
                            <option v-for="deliveryProvider in deliveryProviders" :value="deliveryProvider">
                                {{ deliveryProvider }}
                            </option>
                        </select>

                        <div v-if="form.errors.delivery_provider" class="text-red-500 text-xs mt-1">
                            {{ form.errors.delivery_provider }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Priority
                        </label>
                        <select v-model="form.priority" class="shadow border rounded w-full py-2 px-3 text-gray-700  ">
                            <option value="null" disabled selected>Choose priority</option>
                            <option v-for="priority in priorities" :value="priority">{{ priority }}</option>
                        </select>

                        <div v-if="form.errors.priority" class="text-red-500 text-xs mt-1">
                            {{ form.errors.priority }}
                        </div>
                    </div>

                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup date
                        </label>
                        <input v-model="form.pickup_date" type="date"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_date" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_date }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Pickup time
                        </label>
                        <input v-model="form.pickup_time" type="time"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.pickup_time" class="text-red-500 text-xs mt-1">
                            {{ form.errors.pickup_time }}
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
                <h2 class="text-2xl font-bold mb-4">Package Information</h2>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">

                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Length
                        </label>
                        <input v-model="form.length" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.length" class="text-red-500 text-xs mt-1">
                            {{ form.errors.length }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Height
                        </label>
                        <input v-model="form.height" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.height" class="text-red-500 text-xs mt-1">
                            {{ form.errors.height }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Width
                        </label>
                        <input v-model="form.width" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.width" class="text-red-500 text-xs mt-1">
                            {{ form.errors.width }}
                        </div>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Weight
                        </label>
                        <input v-model="form.weight" type="text"
                            class=" border rounded w-full py-2 px-3 text-gray-700  " />

                        <div v-if="form.errors.weight" class="text-red-500 text-xs mt-1">
                            {{ form.errors.weight }}
                        </div>
                    </div>
                    <div class="col-span-2">
                        <label class="block text-gray-700 text-sm font-bold mb-2">
                            Package description
                        </label>

                        <textarea rows="8" class="border rounded w-full py-2 px-3 text-gray-700 "
                            v-model="form.package_description"></textarea>

                        <div v-if="form.errors.package_description" class="text-red-500 text-xs mt-1">
                            {{ form.errors.package_description }}
                        </div>
                    </div>
                </div>
            </div>

            <div class="flex justify-end">

                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
                    :disabled="processing">
                    Submit
                </button>
            </div>
        </form>
    </div>
</template>

<script setup>
import { useForm } from "@inertiajs/vue3";

defineProps({
    goodTypes: Array,
    deliveryProviders: Array,
    priorities: Array,
});

const form = useForm({
    pickup_address: null,
    pickup_name: null,
    pickup_contact_no: null,
    pickup_email: null,
    delivery_address: null,
    delivery_name: null,
    delivery_contact_no: null,
    delivery_email: null,
    goods_type: null,
    delivery_provider: null,
    priority: null,
    pickup_date: null,
    pickup_time: null,
    package_description: null,
    length: null,
    height: null,
    width: null,
    weight: null,
});

const submit = () => {
    form.post(route("delivery-requests.store"));
};
</script>
