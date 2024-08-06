# 使用教程

1. 克隆本仓库
2. 修改 frps.toml, frpc.toml 配置
3. 启动 frps
    ```bash
   docker-compose update frps
    ```
4. 启动 frpc
    ```bash
   docker-compose update frpc
    ```
**Dashboard:**

登录地址: http://<serverAddr>:7500</br>
账户密码为 frps.toml 文件中配置的账户密码