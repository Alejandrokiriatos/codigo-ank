.class public Lorg/apache/commons/net/ftp/FTPSClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "FTPSClient.java"


# static fields
.field private static final CMD_ADAT:Ljava/lang/String; = "ADAT"

.field private static final CMD_AUTH:Ljava/lang/String; = "AUTH"

.field private static final CMD_CCC:Ljava/lang/String; = "CCC"

.field private static final CMD_CONF:Ljava/lang/String; = "CONF"

.field private static final CMD_ENC:Ljava/lang/String; = "ENC"

.field private static final CMD_MIC:Ljava/lang/String; = "MIC"

.field private static final CMD_PBSZ:Ljava/lang/String; = "PBSZ"

.field private static final CMD_PROT:Ljava/lang/String; = "PROT"

.field public static final DEFAULT_FTPS_DATA_PORT:I = 0x3dd

.field public static final DEFAULT_FTPS_PORT:I = 0x3de

.field private static final DEFAULT_PROT:Ljava/lang/String; = "C"

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static KEYSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROT_COMMAND_VALUE:[Ljava/lang/String;

.field public static PROVIDER:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static STORE_TYPE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static TRUSTSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private auth:Ljava/lang/String;

.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isClientMode:Z

.field private isCreation:Z

.field private final isImplicit:Z

.field private isNeedClientAuth:Z

.field private isWantClientAuth:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private plainSocket:Ljava/net/Socket;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "P"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 171
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 220
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 125
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    .line 137
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    .line 154
    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getValidateServerCertificateTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 221
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    .line 222
    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-eqz p2, :cond_0

    const/16 p1, 0x3de

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->setDefaultPort(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 180
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .line 191
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 192
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private checkPROTValue(Ljava/lang/String;)Z
    .locals 5

    .line 325
    sget-object v0, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 326
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 341
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close([Ljava/io/Closeable;)V

    return-void
.end method

.method private createSSLSocket(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_hostname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 549
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 554
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSslContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method private openDataSecureConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getDataConnectionMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getDataConnectionMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    .line 795
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 799
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getDataTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    move-result v2

    .line 800
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getDataConnectionMode()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_e

    .line 803
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getActivePort()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 812
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTPSClient;->eprt(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    if-eqz v3, :cond_1

    .line 846
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_1
    return-object v1

    .line 815
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTPSClient;->port(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    .line 846
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_3
    return-object v1

    .line 819
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRestartOffset()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRestartOffset()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/net/ftp/FTPSClient;->restart(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    if-eqz v3, :cond_5

    .line 846
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_5
    return-object v1

    .line 823
    :cond_6
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    .line 846
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_7
    return-object v1

    :cond_8
    if-ltz v2, :cond_9

    .line 832
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 834
    :cond_9
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    if-ltz v2, :cond_a

    .line 838
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 840
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReceiveDataSocketBufferSize()I

    move-result p2

    if-lez p2, :cond_b

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReceiveDataSocketBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 843
    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getSendDataSocketBufferSize()I

    move-result p2

    if-lez p2, :cond_c

    .line 844
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getSendDataSocketBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    if-eqz v3, :cond_1b

    .line 846
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_d

    .line 803
    :try_start_5
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_0
    throw p1

    .line 856
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->isUseEPSVwithIPv4()Z

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_f

    if-eqz v0, :cond_10

    .line 857
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->epsv()I

    move-result v3

    const/16 v8, 0xe5

    if-ne v3, v8, :cond_10

    .line 858
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    if-eqz v0, :cond_11

    return-object v1

    .line 864
    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->pasv()I

    move-result v0

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_12

    return-object v1

    .line 867
    :cond_12
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 870
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 871
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2

    .line 873
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 876
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReceiveDataSocketBufferSize()I

    move-result v3

    if-lez v3, :cond_14

    .line 877
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReceiveDataSocketBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 879
    :cond_14
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getSendDataSocketBufferSize()I

    move-result v3

    if-lez v3, :cond_15

    .line 880
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getSendDataSocketBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 882
    :cond_15
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassiveLocalIPAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 883
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassiveLocalIPAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-direct {v3, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_16
    if-ltz v2, :cond_17

    .line 891
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 894
    :cond_17
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassivePort()I

    move-result v7

    invoke-direct {v2, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->connectTimeout:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 896
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 897
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getPassivePort()I

    move-result v7

    invoke-virtual {v2, v0, v3, v7, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    goto :goto_3

    :cond_18
    move-object v2, v1

    .line 900
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRestartOffset()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_19

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRestartOffset()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->restart(J)Z

    move-result v3

    if-nez v3, :cond_19

    .line 901
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    return-object v1

    .line 905
    :cond_19
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 906
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    return-object v1

    :cond_1a
    move-object p1, v0

    move-object v1, v2

    .line 911
    :cond_1b
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->isRemoteVerificationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_5

    .line 913
    :cond_1c
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 915
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 917
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host attempting data connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not same as server "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 921
    :cond_1d
    :goto_5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getProxy()Ljava/net/Proxy;

    move-result-object p2

    if-eqz p2, :cond_1e

    return-object v1

    :cond_1e
    return-object p1
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->applySocketAttributes()V

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    .line 242
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_()V

    .line 244
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-nez v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->execAUTH()V

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    :cond_1
    return-void
.end method

.method protected _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method protected _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->openDataSecureConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->_prepareDataSocket_(Ljava/net/Socket;)V

    .line 284
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_3

    .line 285
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 287
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 288
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 291
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-nez v0, :cond_0

    .line 292
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 293
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 301
    :cond_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    :cond_3
    return-object p1
.end method

.method protected _prepareDataSocket_(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 371
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 373
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    return-void
.end method

.method public execADAT([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    const-string v0, "ADAT"

    if-eqz p1, :cond_0

    .line 386
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 388
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execAUTH(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    const-string v0, "AUTH"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected execAUTH()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    const-string v0, "AUTH"

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14e

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xea

    if-ne v1, v0, :cond_1

    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execCCC()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const-string v0, "CCC"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public execCONF([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const-string v0, "CONF"

    if-eqz p1, :cond_0

    .line 453
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 455
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execENC([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const-string v0, "ENC"

    if-eqz p1, :cond_0

    .line 468
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 470
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execMIC([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    const-string v0, "MIC"

    if-eqz p1, :cond_0

    .line 483
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 485
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execPBSZ(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    .line 500
    const-string v0, "PBSZ"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xc8

    if-ne p2, p1, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public execPROT(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    const-string v0, "C"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 525
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->checkPROTValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    const-string v1, "PROT"

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v2, v1, :cond_2

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 533
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    return-void

    .line 535
    :cond_1
    new-instance p1, Lorg/apache/commons/net/ftp/FTPSSocketFactory;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPSSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 536
    new-instance p1, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    return-void

    .line 529
    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 526
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAuthValue()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getProtocol()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected getProtocols()[Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getSuites()[Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isClientMode()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    return v0
.end method

.method protected isCreation()Z
    .locals 1

    .line 731
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    return v0
.end method

.method public isEndpointCheckingEnabled()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    return v0
.end method

.method protected isImplicit()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    return v0
.end method

.method protected isNeedClientAuth()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    return v0
.end method

.method protected isWantClientAuth()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    return v0
.end method

.method public parseADATReply(Ljava/lang/String;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 935
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    const-string v1, "ADAT="

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public parsePBSZ(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->execPBSZ(J)V

    .line 951
    const-string v0, "PBSZ="

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 978
    const-string v0, "CCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc8

    if-ne p1, p2, :cond_0

    .line 982
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 983
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    .line 984
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlInput_:Ljava/io/BufferedReader;

    .line 985
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlOutput_:Ljava/io/BufferedWriter;

    return p2

    .line 980
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p2
.end method

.method public setAuthValue(Ljava/lang/String;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    .line 1005
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 1014
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledSessionCreation(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .locals 0

    .line 1035
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .line 1064
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    .line 1083
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .line 1092
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    return-void
.end method

.method protected sslNegotiation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    .line 1102
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    .line 1103
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->createSSLSocket(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 1104
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 1105
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 1108
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 1109
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    if-eqz v1, :cond_1

    .line 1110
    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    goto :goto_0

    .line 1113
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 1114
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 1117
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1118
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1120
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1121
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1123
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 1126
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    .line 1127
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlInput_:Ljava/io/BufferedReader;

    .line 1128
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 1130
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_hostname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1131
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname doesn\'t match certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method
