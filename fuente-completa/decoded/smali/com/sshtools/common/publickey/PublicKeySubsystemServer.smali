.class public Lcom/sshtools/common/publickey/PublicKeySubsystemServer;
.super Lcom/sshtools/common/ssh/Subsystem;
.source "PublicKeySubsystemServer.java"


# static fields
.field static final ACCESS_DENIED:I = 0x1

.field static final GENERAL_FAILURE:I = 0x6

.field static final KEY_NOT_FOUND:I = 0x4

.field static final KEY_NOT_SUPPORTED:I = 0x5

.field static final REQUEST_NOT_SUPPPORTED:I = 0x3

.field static final STORAGE_EXCEEDED:I = 0x2

.field public static final SUBSYSTEM_NAME:Ljava/lang/String; = "publickey@vandyke.com"

.field static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    const-string v0, "publickey"

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/Subsystem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getProviders()[Lcom/sshtools/common/auth/Authenticator;
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/auth/AuthenticationMechanismFactory;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/auth/AuthenticationMechanismFactory;

    const-string v1, "publickey"

    .line 182
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v2

    .line 181
    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/auth/AuthenticationMechanismFactory;->getProviders(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/Authenticator;

    move-result-object v0

    return-object v0
.end method

.method private processAddKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 144
    invoke-static {v1, p1}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getProviders()[Lcom/sshtools/common/auth/Authenticator;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 148
    check-cast v5, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v6

    invoke-interface {v5, p1, v0, v6}, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;->add(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 151
    const-string v5, "Public key created."

    invoke-virtual {p0, v3, v5}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const/4 v0, 0x6

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    .line 163
    :catch_2
    const-string p1, "Access denied."

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    :catch_3
    const/4 p1, 0x5

    .line 161
    const-string v0, "Key not supported."

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    :catch_4
    const/4 p1, 0x3

    .line 158
    const-string v0, "Add not supported."

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processKeyList(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getProviders()[Lcom/sshtools/common/auth/Authenticator;

    move-result-object v0

    array-length v1, v0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 86
    check-cast v3, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;->getKeys(Lcom/sshtools/common/ssh/SshConnection;)Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/publickey/SshPublicKeyFile;

    .line 90
    new-instance v5, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v5}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    .line 91
    invoke-interface {v4}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-interface {v4}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getOptions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-interface {v4}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    return-void

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const/4 v1, 0x6

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_2

    :catch_2
    const/4 v0, 0x3

    .line 104
    const-string v1, "list not supported."

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_2

    .line 102
    :catch_3
    const-string v0, "Access denied."

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    .line 109
    :goto_2
    const-string v0, "OK"

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    return-void
.end method

.method private processRemoveKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const-string v0, "Remove not supported."

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 116
    :try_start_0
    invoke-static {v1, p1}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 118
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getProviders()[Lcom/sshtools/common/auth/Authenticator;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 119
    check-cast v5, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;->remove(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 122
    const-string v5, "Public key removed."

    invoke-virtual {p0, v3, v5}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const/4 v0, 0x6

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    :catch_2
    const/4 p1, 0x3

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    .line 131
    :catch_3
    const-string p1, "Access denied."

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    goto :goto_1

    :catch_4
    const/4 p1, 0x4

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->writeStatusResponse(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processVersion(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int p1, v0

    .line 171
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Client publickey subsystem version {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->context:Lcom/sshtools/common/ssh/Context;

    const-class v1, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/AuthenticationPolicy;->getBannerMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method


# virtual methods
.method protected cleanupSubsystem()V
    .locals 0

    return-void
.end method

.method protected onMessageReceived([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 63
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->processVersion(Lcom/sshtools/common/util/ByteArrayReader;)V

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->processAddKey(Lcom/sshtools/common/util/ByteArrayReader;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->processRemoveKey(Lcom/sshtools/common/util/ByteArrayReader;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->processKeyList(Lcom/sshtools/common/util/ByteArrayReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->onFreeMessage([B)V

    .line 77
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 73
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The client sent an invalid request"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 76
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->onFreeMessage([B)V

    .line 77
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 78
    throw v1
.end method

.method protected onSubsystemFree()V
    .locals 0

    return-void
.end method

.method writeStatusResponse(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    .line 187
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 189
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/PublicKeySubsystemServer;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method
