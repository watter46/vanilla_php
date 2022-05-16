<script lang="ts">
import { defineComponent, ref, onMounted } from "vue";
export default defineComponent({
    name: 'example-component',
    setup() {
        const message = ref("Laravel × Vue 3");

        onMounted(():void => console.log('Component mounted.')) 

        return {
            message
        }
    }
})
</script>

<template>
    <div class="container">
        <div>
            <router-link to="/page1">Page1</router-link>
            <router-link to="/page2">Page2</router-link>
            <router-view></router-view>
        </div>
        
        <div class="row justify-content-center">
          <div>{{ message }}</div>
          <div class="card">
              <div style="font-size: 30px;">Hello World!!</div>
          </div>
        </div>
    </div>
</template>
