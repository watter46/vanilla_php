<template>
    <div class="container">
        <div class="row justify-content-center">
          <div>{{ message }}</div>
          <div class="card">
              <div style="font-size: 30px;">Hello World!!</div>
          </div>
        </div>
    </div>
</template>

<script>
    import { ref } from "vue";
    export default {
        setup() {
            const message = ref("Laravel × Vue 3");

            return {
              message
            };
        },

        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
