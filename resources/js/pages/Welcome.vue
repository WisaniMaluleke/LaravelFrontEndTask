<template>
  <div class="container-fluid">

    <nav class="fixed w-full z-20 top-0 start-0 border-b border-gray-500 dark:border-gray-600">
      <div class="flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="https://flowbite.com/" class="flex items-center space-x-3 rtl:space-x-reverse">
          <img :src="imageUrl" class="h-8" alt="Flowbite Logo">
        </a>
        <div class="flex md:order-2 space-x-3 md:space-x-0 rtl:space-x-reverse">
          <button type="button" class="text-white btn-outline rounded-lg text-sm px-4 py-2 text-center mr-1">
            Sign Up
          </button>
          <button type="button"
            class="primary-col bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Login
          </button>


          <button data-collapse-toggle="navbar-sticky" type="button"
            class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
            aria-controls="navbar-sticky" aria-expanded="false">
            <span class="sr-only">Open main menu</span>
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M1 1h15M1 7h15M1 13h15" />
            </svg>
          </button>
        </div>
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
          <ul
            class="text-white flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
            <li>
              <a href="#"
                class="block py-2 px-3 text-white rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-gray-700 md:p-0 md:dark:hover:text-gray-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                aria-current="page">Home</a>
            </li>
            <li>
              <a href="#"
                class="block py-2 px-3 text-white rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-gray-700 md:p-0 md:dark:hover:text-gray-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                Browse</a>
            </li>
            <li>
              <a href="#"
                class="block py-2 px-3 text-white rounded-sm hover:bg-gray-100 md:hover:bg-transparent md:hover:text-gray-700 md:p-0 md:dark:hover:text-gray-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                Pricing
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

  </div>


  <div class="container-fluid grid grid-cols-2 md:grid-cols-2 mt-20 relative">
    <!-- Left Section -->
    <div class="text-white text-[50px] items-center">
      <div class="hero-section">
        <h1>
          Your Ultimate <br />
          Destination for <br />
          <span class="primary-text">High-Quality Edits</span>
        </h1>
      </div>
    </div>

    <!-- Right Background Section -->
    <div class="background-container-banner"></div>
  </div>

  <div class="background-container">
    <div class="flex content w-full  justify-center items-center px-6">
      <!-- Main Card -->
      <div class="your-work-card m-20 rounded-2xl p-8 lg:p-12 shadow-lg flex flex-col lg:flex-row items-center gap-10">

        <!-- Left Content -->
        <div class="lg:w-1/2 text-left">
          <h1 class="text-4xl font-semibold text-gray-200 leading-tight">
            Turn <span class="primary-text">Your Work</span>
            <br>
            into <span class="primary-text">Revenue</span>
          </h1>
          <p class="text-gray-400 mt-4">
            Sign up as an editor to gain access to our library of stock <br>
            footage which you can use to create edits and resell on the <br>
            Hive platform.
          </p>
          <button
            class="mt-6 bg-yellow-400 text-gray-900 px-5 py-3 rounded-lg font-medium hover:bg-yellow-500 transition">
            Become a Contributor
          </button>
        </div>

        <!-- Right Image -->
        <div class="rectangleImage lg:w-1/2 mt-6 lg:mt-0 flex justify-center"></div>

      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      imageUrl: "/images/Hive Logo white Text.png", // Relative to Laravel's public folder
      rectangleImage: {
        backgroundImage: "url('/images/Rectangle 23421.png')",
        backgroundSize: "fit",
        backgroundPosition: "center",
        // opacity: "0.1", // Adjust transparency
        width: "584px", /* Takes 50% of the screen width */
        height: "344px",

      },
    };
  },
};
</script>

<style>
/* Dark Hexagonal Background */
.bg-dark-pattern {
  background: url('/images/dark-pattern.png'), #121212;
  background-size: cover;
}

/* Dark Card */
.bg-dark-card {
  background: linear-gradient(135deg, #1a1a1a, #222);
}
</style>