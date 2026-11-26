.class public Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;
.super Ljava/lang/Object;
.source "SshPrivateKeyFileFactory.java"


# static fields
.field public static final OPENSSH_FORMAT:I = 0x0

.field public static final OPENSSL_FORMAT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePassphrase(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object v0

    .line 270
    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->changePassphrase(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 275
    :try_start_0
    invoke-interface {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 279
    throw p0
.end method

.method public static convertFile(Ljava/io/File;Ljava/lang/String;ILjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 250
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->createFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-static {p0, v0, v1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    .line 161
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->isBCEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->tryBC(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 162
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "OpenSSL format requires maverick-bc dependency and BouncyCastle JCE and PKIX dependencies"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid key format!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_2
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->isBCEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 174
    :try_start_1
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->tryBC(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 178
    :catch_1
    :cond_3
    new-instance p3, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;

    invoke-direct {p3, p0, p1, p2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;-><init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public static createFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-static {p0, p1, p2}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 225
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 228
    :try_start_0
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 229
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 232
    throw p0
.end method

.method public static createFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, p1, v0, p2}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->createFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/nio/file/Path;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    :catch_1
    throw v0
.end method

.method public static parse(Ljava/nio/file/Path;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-class v0, [B

    const-string v1, "maverick.verbose"

    .line 0
    const-string v2, "com.sshtools.common.publickey.bc.OpenSSHPrivateKeyFile"

    .line 65
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->hasBCProvider()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->isBCEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getBCProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    const-string v4, "isFormatted"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-array v4, v5, [Ljava/lang/Class;

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 77
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "Bouncycastle PKIX not in classpath so falling back to older implementation of OpenSSHPrivateKeyFile."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "OpenSSHPrivateKeyFile could not load using Bouncycastle PKIX"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->isFormatted([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;-><init>([B)V

    return-object v0

    .line 93
    :cond_1
    sget-object v0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->END:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;->isFormatted([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;-><init>([B)V

    return-object v0

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->isFormatted([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    new-instance v0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;-><init>([B)V

    return-object v0

    .line 99
    :cond_3
    const-class v0, Lcom/sshtools/common/publickey/SshPrivateKeyProvider;

    .line 100
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/SshPrivateKeyProvider;

    .line 101
    invoke-interface {v1, p0}, Lcom/sshtools/common/publickey/SshPrivateKeyProvider;->isFormatted([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    invoke-interface {v1, p0}, Lcom/sshtools/common/publickey/SshPrivateKeyProvider;->create([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    return-object p0

    .line 105
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "A suitable key format could not be found!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :catch_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "An error occurred parsing a private key file! Is the file corrupt?"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tryBC(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "com.sshtools.common.publickey.bc.OpenSSHPrivateKeyFile"

    .line 193
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getBCProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 195
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/sshtools/common/ssh/components/SshKeyPair;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 197
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    .line 198
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
