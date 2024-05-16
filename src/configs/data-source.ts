import 'dotenv/config';
import { DataSource } from "typeorm";

export const AppDataSource = new DataSource({
    type: process.env.DB_TYPE as any,
    host: process.env.DB_HOST,
    port: parseInt(process.env.DB_PORT || '3306', 10),
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    synchronize: true, 
    logging: process.env.DB_LOGGING === 'true', 
    entities: ["src/modules/**/entity/*.ts"],
    subscribers: [],
    migrations: [],
    extra: {
        socketPath: process.env.DB_SOCKET_PATH
    }
})