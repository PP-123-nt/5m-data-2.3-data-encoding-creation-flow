### Service Calls: REST, RPC and GraphQL

### 1. REST (Representational State Transfer)
**Real-Life Example: An E-commerce Website (like Amazon) fetching a Product Page.**

*   **How it works:** When you click on a specific shoe to view its details, your browser sends a standard HTTP `GET` request to a specific URL (e.g., `https://api.shop.com/products/shoe-123`). 

*   **Why it fits the image:** It is entirely **resource-based** (the resource is the "product"). It uses standard HTTP methods. It is **stateless** (the server doesn't need to remember your previous requests to fulfill this one). The server responds with a standard **JSON** file containing the shoe's name, price, and image URLs. It's perfectly **ideal for web-based applications** where you just need to look up or modify specific resources.

### 2. RPC (Remote Procedure Call)
**Real-Life Example: A Ride-Sharing App's Internal Microservices (like Uber).**

*   **How it works:** Imagine the "Billing" service needs to know the distance of a completed ride to charge the customer. It doesn't ask for a "resource." Instead, it makes a direct RPC call (often using a modern framework like gRPC) to the "Routing" service, executing a specific function: `CalculateDistance(StartPoint, EndPoint)`. 

*   **Why it fits the image:** It **emphasizes executing remote functions** as if they were local code. Uber uses this heavily for **performance**; because it relies on **specific binary encoding** (like Protocol Buffers) rather than bulky JSON text, communication between their internal servers is lightning fast and highly efficient.

### 3. GraphQL
**Real-Life Example: A Mobile App fetching a User Profile Screen (like Instagram or Facebook).**

*   **How it works:** When you open a friend's profile on your phone, you need their username, avatar, follower count, *and* their last 3 photos. 

    *   In REST, this might require 3 separate API calls (one for user info, one for followers, one for photos), leading to **over-fetching** (getting data you don't need) or **under-fetching** (having to make multiple trips).

    *   With GraphQL, the mobile app sends a single, precise query to a **single endpoint**: *"Give me `name`, `avatar`, `followerCount`, and the `url` of the `latest_3_posts`."*
    
*   **Why it fits the image:** It allows **clients to request precise data**, completely eliminating over/under-fetching. It uses a **single endpoint** and is perfect for **client-driven data retrieval** where mobile apps on slower networks need to minimize the amount of data they download.