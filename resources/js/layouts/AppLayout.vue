<template class="w-full">
    <header class="w-full bg-white border-b border-gray-200 dark:border-gray-700 dark:bg-gray-900">
      <div class="mx-auto container-fluid">
        <nav class="flex items-center justify-between p-4">
          <!-- Logo Section -->
          <div class="text-xl font-bold text-center text-indigo-600 dark:text-indigo-300">
            <Link :href="route('home')">Warehouse</Link>
          </div>

          <!-- Hamburger Menu for Mobile Screens -->
          <div class="flex items-center gap-4 md:hidden">
            <button @click="isMenuOpen = !isMenuOpen" class="text-xl text-gray-500">
              <span v-if="!isMenuOpen">&#9776;</span>
              <span v-else>&times;</span>
            </button>
          </div>

          <!-- Desktop Menu Links -->
          <div class="hidden ml-6 space-x-6 md:flex">
            <!-- <div class="text-lg font-medium">
              <Link :href="route('projectone')">First Project</Link>
            </div>
            <div class="text-lg font-medium">
              <Link :href="route('about')">About</Link>
            </div>
            <div class="text-lg font-medium">
              <Link :href="route('contactus')">Contact Us</Link>
            </div>
            <div class="text-lg font-medium">
              <Link :href="route('listing.index')">Listings</Link>
            </div> -->

            <!-- User Info / Sign-In -->
            <div v-if="user" class="flex items-center gap-4">
              <Link class="text-sm text-gray-500" :href="route('realtor.listing.index')" >{{ user.name }}</Link>
              <Link :href="route('logout')" method="delete" as="button">Logout</Link>
            </div>
            <div v-else class="flex items-center gap-4">
              <Link :href="route('login')">Sign-In</Link>
              <Link :href="route('user-account.create')">Register</Link>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <!-- Sidebar for Mobile -->
    <div v-if="isMenuOpen" class="fixed inset-0 z-50 bg-black bg-opacity-50 md:hidden" @click="isMenuOpen = false"></div>
    <div v-if="isMenuOpen" class="fixed top-0 left-0 z-50 w-64 h-full p-6 bg-white border-r border-gray-200 dark:bg-gray-900 dark:border-gray-700">
      <div class="space-y-6">
        <!-- Logo Section in Sidebar -->
        <div class="mb-6 text-xl font-bold text-indigo-600 dark:text-indigo-300">
          <Link :href="route('home')">Warehouse</Link>
        </div>

        <!-- Sidebar Links -->
        <div class="space-y-4">
          <div class="text-lg font-medium">
            <Link :href="route('projectone')" @click="isMenuOpen = false">First Project</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('about')" @click="isMenuOpen = false">About</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('contactus')" @click="isMenuOpen = false">Contact Us</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('listing.index')" @click="isMenuOpen = false">Listings</Link>
          </div>
        </div>

        <!-- User Info / Sign-In -->
        <div v-if="user" class="flex flex-col mt-6">
          <div class="mb-4 text-sm text-gray-500">{{ user.name }}</div>
          <Link :href="route('logout')" method="delete" as="button" @click="isMenuOpen = false">Logout</Link>
        </div>
        <div v-else class="mt-6">
          <Link :href="route('login')" @click="isMenuOpen = false">Sign-In</Link>
        </div>
      </div>
    </div>

    <!-- Sidebar for Desktop -->
    <div class="fixed left-0 z-40 hidden w-64 h-full p-6 bg-white border-r border-gray-200 top-15 md:block dark:bg-gray-900 dark:border-gray-700">
      <div class="space-y-6">
        <!-- Sidebar Links -->
        <div class="space-y-4">
          <div class="text-lg font-medium">
            <Link :href="route('projectone')">First Project</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('about')">About</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('contactus')">Contact Us</Link>
          </div>
          <div class="text-lg font-medium">
            <Link :href="route('listing.index')">Listings</Link>
          </div>
        </div>

        <!-- User Info / Sign-In -->
        <div v-if="user" class="flex flex-col mt-6">
          <div class="mb-4 text-sm text-gray-500">{{ user.name }}</div>
          <Link :href="route('logout')" method="delete" as="button">Logout</Link>
        </div>
        <div v-else class="mt-6">
          <Link :href="route('login')">Sign-In</Link>
        </div>
      </div>
    </div>

    <main class="z-40 bg-gray-700 p-4 container-fluid md:ml-64">
      <div v-if="flashSuccess"
        class="p-2 mb-4 border border-green-200 rounded-md shadow-sm dark:border-green-800 bg-green-50 dark:bg-green-900">
        {{ flashSuccess }}
      </div>
      <slot>Default</slot>
    </main>
  </template>

  <script setup>
  import { computed, ref } from 'vue';
  import { Link, usePage } from '@inertiajs/vue3';

  const page = usePage();
  const flashSuccess = computed(() => page.props.flash.success);
  const user = computed(() => page.props.user);
  const isMenuOpen = ref(false);
  </script>

  <style scoped>
  /* Ensures smooth sliding effect for mobile sidebar */
  .sidebar-enter-active, .sidebar-leave-active {
    transition: transform 0.3s ease;
  }

  .sidebar-enter, .sidebar-leave-to {
    transform: translateX(-100%);
  }

  @media (min-width: 768px) {
    .sidebar {
      display: none;
    }
  }
  </style>
