# Time capsule server
This project refers to the server of a time-capsule project, responsible for authentication, storage and upload of memories. It's consumed by the time-capsule-web project (check it out [here](https://github.com/tiemibf/time-capsule-web)).

## Endpoints
### :unlock: auth
**POST** ```/register```

### :movie_camera: memories

**GET** ```/memories```

 - **Response**:
   - **Code**: 200
   - **Content**: 
   ~~~
     {
        id: string;
        coverUrl: string;
        excerpt:string;
        createdAt: Date,
      }[]
    ~~~

**GET** ```/memories/:id```
  - **Path params**:
  ```id: string;```
 - **Response**:
   - **Code**: 200
   - **Content**:
   ~~~
     {
        id: string;
        userId: string;
        coverUrl: string;
        content: string;
        isPublic: boolean;
        createdAt: Date;
      }
   ~~~

**PUT** ```/memories/:id```
- **Path params**:
  ```id: string;```
- **Body**:
    ~~~
     {
        content: string;
        coverUrl: string;
        isPublic: boolean;
      }
   ~~~
    
**POST** ```/memories```
- **Body**:
    ~~~
     {
        content: string;
        coverUrl: string;
        isPublic: boolean;
      }
   ~~~
- **Response**:
   - **Code**: 200
   - **Content**:
   ~~~
     {
        id: string;
        userId: string;
        coverUrl: string;
        content: string;
        isPublic: boolean;
        createdAt: Date;
      }
   ~~~

**DELETE** ```/memories/:id```
  - **Path params**:
  ```id: string;```
  
- **Response**:
   - **Code**: 204

### :floppy_disk: upload

**POST** ```/upload```
- **Body**:
  - property ```file``` holds the image URL.
  ~~~
    {
      file: string;
    }
    ~~~

### Technologies
- NodeJS
- Typescript
- Prisma: database lib
- Zod: fields validation
  
### Installing and running
- Run project: ```$ npm run dev```
- Run migration: ```$ npx prisma migrate dev```
- Run prisma studio (graphic database): ```$ npx prisma studio```
