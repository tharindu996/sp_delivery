<template>
    <header>
        <nav class="p-6 mx-auto justify-between flex items-center gap-6 bg-blue-500">
            <div class="logo-title">
                <Link :href="route('index')" class="text-3xl text-white font-extrabold">
                    DMS
                </Link>
            </div>
            <div class="gap-6">
                <Link :href="route('delivery-requests.index')" class="px-5 py-2 ml-4 rounded-lg hover:bg-slate-700 hover:text-white" :class="{'bg-slate-700 text-white' : $page.component === 'DeliveryRequests/Index'}">List</Link>
                <Link :href="route('delivery-requests.create')" class="px-5 py-2 ml-4 rounded-lg hover:bg-slate-700 hover:text-white" :class="{'bg-slate-700 text-white' : $page.component === 'DeliveryRequests/Create'}">Create</Link>
            </div>
        </nav>
    </header>

    <main class="p-6 bg-slate-100">
        <slot />
    </main>

</template>

<script setup>

</script>