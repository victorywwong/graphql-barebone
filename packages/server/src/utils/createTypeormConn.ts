import { getConnectionOptions, createConnection } from "typeorm";

export const createTypeormConn = async () => {
  const connectionOptions = await getConnectionOptions(process.env.NODE_ENV);
  return process.env.NODE_ENV === "production" ? createConnection({ ...connectionOptions, url: process.env.DATABASE_URL as String, name: "default" } as any) : createConnection({ ...connectionOptions, name: "default" });
};
