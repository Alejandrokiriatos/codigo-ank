.class public abstract Lcom/sshtools/synergy/ssh/TransportProtocol;
.super Lcom/sshtools/common/ssh/ExecutorOperationSupport;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/ProtocolEngine;
.implements Lcom/sshtools/common/nio/IdleStateListener;
.implements Lcom/sshtools/synergy/ssh/SshTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;,
        Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;,
        Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/common/ssh/ExecutorOperationSupport<",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">;",
        "Lcom/sshtools/synergy/nio/ProtocolEngine;",
        "Lcom/sshtools/common/nio/IdleStateListener;",
        "Lcom/sshtools/synergy/ssh/SshTransport<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final ACTIVE_SERVICE_IN:Ljava/lang/Integer;

.field public static final AUTH_CANCELLED_BY_USER:I = 0xd

.field public static final BY_APPLICATION:I = 0xb

.field public static CHARSET_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final COMPRESSION_ERROR:I = 0x6

.field public static final CONNECTED:I = 0x3

.field public static final CONNECTION_LOST:I = 0xa

.field public static final DISCONNECTED:I = 0x4

.field public static final HOST_KEY_NOT_VERIFIABLE:I = 0x9

.field public static final HOST_NOT_ALLOWED:I = 0x1

.field public static final ILLEGAL_USER_NAME:I = 0xf

.field public static final KEY_EXCHANGE_FAILED:I = 0x3

.field public static final MAC_ERROR:I = 0x5

.field public static final NEGOTIATING_PROTOCOL:I = 0x1

.field public static final NO_MORE_AUTH_METHODS_AVAILABLE:I = 0xe

.field public static final PERFORMING_KEYEXCHANGE:I = 0x2

.field public static final PROTOCOL_ERROR:I = 0x2

.field public static final PROTOCOL_VERSION_NOT_SUPPORTED:I = 0x8

.field public static final RESERVED:I = 0x4

.field public static final SERVICE_NOT_AVAILABLE:I = 0x7

.field static final SSH_MSG_DEBUG:I = 0x4

.field static final SSH_MSG_DISCONNECT:I = 0x1

.field public static final SSH_MSG_EXT_INFO:I = 0x7

.field static final SSH_MSG_IGNORE:I = 0x2

.field static final SSH_MSG_KEX_INIT:I = 0x14

.field static final SSH_MSG_NEWKEYS:I = 0x15

.field public static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field protected static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field private static final STRICT_KEX_CLIENT:Ljava/lang/String; = "kex-strict-c-v00@openssh.com"

.field private static final STRICT_KEX_SERVER:Ljava/lang/String; = "kex-strict-s-v00@openssh.com"

.field public static final TOO_MANY_CONNECTIONS:I = 0xc

.field public static lock:Ljava/lang/Object;


# instance fields
.field protected activeService:Lcom/sshtools/synergy/ssh/Service;

.field authenticatedFuture:Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

.field protected cipherCS:Ljava/lang/String;

.field protected cipherSC:Ljava/lang/String;

.field closed:Z

.field protected completedFirstKeyExchange:Z

.field protected compressionCS:Ljava/lang/String;

.field protected compressionSC:Ljava/lang/String;

.field protected con:Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation
.end field

.field connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

.field currentState:I

.field decryption:Lcom/sshtools/common/ssh/components/SshCipher;

.field disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

.field protected disconnectStarted:Ljava/util/Date;

.field protected enableExtensionCapability:Z

.field encryption:Lcom/sshtools/common/ssh/components/SshCipher;

.field expectPacket:Z

.field expectedBytes:I

.field protected hasExtensionCapability:Z

.field hasFirstNewKeys:Z

.field protected hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field idleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/nio/IdleStateListener;",
            ">;"
        }
    .end annotation
.end field

.field ignoreMessage:Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>.IgnoreMessage;"
        }
    .end annotation
.end field

.field incomingBytes:J

.field incomingCipherLength:I

.field incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

.field incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

.field incomingMacLength:I

.field incomingSequence:J

.field incomingSwap:[B

.field initial:[B

.field isKexStrict:Z

.field kexQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/sshd/SshMessage;",
            ">;"
        }
    .end annotation
.end field

.field kexlockIn:Ljava/lang/Object;

.field kexlockOut:Ljava/lang/Object;

.field keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected keyExchangeAlgorithm:Ljava/lang/String;

.field lastActivity:J

.field lastIdleEvent:J

.field lastKeepAlive:J

.field protected localIdentification:Ljava/lang/String;

.field protected localkex:[B

.field protected macCS:Ljava/lang/String;

.field protected macSC:Ljava/lang/String;

.field msglen:I

.field numIncomingBytesSinceKEX:I

.field numIncomingPacketsSinceKEX:I

.field numOutgoingBytesSinceKEX:I

.field numOutgoingPacketsSinceKEX:I

.field offsetIncoming:I

.field outgoingBytes:J

.field outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

.field outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

.field outgoingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/sshd/SshMessage;",
            ">;"
        }
    .end annotation
.end field

.field outgoingSequence:J

.field packet:[B

.field padlen:I

.field payloadIncoming:[B

.field postedIdentification:Z

.field protected publicKey:Ljava/lang/String;

.field queuedKexInit:Z

.field protected receivedRemoteIdentification:Z

.field remaining:I

.field remoteCSCompressions:Ljava/lang/String;

.field remoteCSMacs:Ljava/lang/String;

.field remoteCiphersCS:Ljava/lang/String;

.field remoteCiphersSC:Ljava/lang/String;

.field protected remoteIdentification:Ljava/lang/StringBuffer;

.field remoteKeyExchanges:Ljava/lang/String;

.field remotePublicKeys:Ljava/lang/String;

.field remoteSCCompressions:Ljava/lang/String;

.field remoteSCMacs:Ljava/lang/String;

.field protected remotekex:[B

.field rnd:Ljava/security/SecureRandom;

.field sentKexInit:Z

.field protected sentLocalIdentification:Z

.field protected sessionIdentifier:[B

.field protected socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

.field protected sshContext:Lcom/sshtools/synergy/ssh/SshContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field started:Ljava/util/Date;

.field transportListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/TransportProtocolListener;",
            ">;"
        }
    .end annotation
.end field

.field protected uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    const-string v0, "TransportProtocol.activeService.in"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->ACTIVE_SERVICE_IN:Ljava/lang/Integer;

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/ssh/SshContext;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sshtools/synergy/nio/ConnectRequestFuture;",
            ")V"
        }
    .end annotation

    .line 306
    const-string v0, "transport-protocol"

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->rnd:Ljava/security/SecureRandom;

    .line 89
    const-string v0, "SSH-2.0-"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    .line 92
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentLocalIdentification:Z

    .line 93
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    .line 98
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasExtensionCapability:Z

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->enableExtensionCapability:Z

    .line 101
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    .line 102
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->transportListeners:Ljava/util/List;

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->idleListeners:Ljava/util/List;

    .line 122
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 123
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 126
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastActivity:J

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastIdleEvent:J

    .line 135
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->closed:Z

    .line 137
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    const/4 v2, 0x0

    .line 138
    iput-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    .line 142
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    .line 143
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasFirstNewKeys:Z

    .line 197
    iput v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const-wide/16 v1, 0x0

    .line 228
    iput-wide v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    .line 229
    iput-wide v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 231
    iput-wide v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    .line 232
    iput-wide v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    .line 234
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockIn:Ljava/lang/Object;

    .line 235
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    .line 237
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->queuedKexInit:Z

    .line 238
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentKexInit:Z

    .line 290
    iput-wide v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastKeepAlive:J

    .line 295
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->started:Ljava/util/Date;

    .line 297
    new-instance v1, Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    invoke-direct {v1}, Lcom/sshtools/synergy/nio/DisconnectRequestFuture;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    .line 298
    new-instance v1, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->authenticatedFuture:Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    const/16 v1, 0x8

    .line 1645
    iput v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    .line 1646
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    .line 1647
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    .line 1648
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    .line 1649
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    .line 307
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 308
    new-instance v0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->ignoreMessage:Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;

    .line 309
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    .line 310
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->uuid:Ljava/util/UUID;

    .line 311
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    return-void
.end method

.method private checkAlgorithms()V
    .locals 6

    .line 1919
    const-string v0, "maverick.isolate"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    const-string v0, "maverick.isolatedKex"

    const-string v1, "ecdh-sha2-nistp256"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    const-string v1, "maverick.isolatedCipher"

    const-string v2, "aes128-ctr"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    const-string v2, "maverick.isolatedMac"

    const-string v3, "hmac-sha1"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1923
    const-string v3, "maverick.isolatedComp"

    const-string v4, "none"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1924
    const-string v4, "maverick.isolatedPublicKey"

    const-string v5, "ssh-rsa"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1926
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkStrictKex()V
    .locals 2

    .line 1912
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasFirstNewKeys:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1913
    const-string v1, "Strict KEX mode encountered a message that is not permitted at this time"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2627
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'"

    const-string v2, " value \'"

    const-string v3, "Client sent invalid "

    if-nez v0, :cond_1

    .line 2631
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v0, p2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2634
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2628
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeChaCha20Poly1305Format(Ljava/nio/ByteBuffer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    check-cast v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    .line 717
    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_4

    .line 723
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 727
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    new-instance v4, Lcom/sshtools/common/util/UnsignedInteger64;

    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    invoke-direct {v4, v5, v6}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->readPacketLength([BLcom/sshtools/common/util/UnsignedInteger64;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    if-lez v0, :cond_3

    add-int/lit8 v1, v0, 0x4

    if-ltz v1, :cond_1

    add-int/2addr v0, v3

    .line 734
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 736
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    .line 750
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 751
    iput-boolean v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 752
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    goto :goto_2

    .line 737
    :cond_1
    :goto_0
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    add-int/lit8 v0, p1, 0x4

    if-gez v0, :cond_2

    .line 741
    const-string v0, " is too small"

    goto :goto_1

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 744
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " exceeds maximum supported length of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incoming packet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 737
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 745
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Disconnected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 730
    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client sent invalid message length of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_7

    .line 764
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 765
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_3

    .line 766
    :cond_5
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 771
    :goto_3
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    invoke-virtual {p1, v1, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 777
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 778
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    if-nez p1, :cond_7

    .line 788
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    add-int v9, p1, v0

    const/4 v6, 0x4

    const/4 v8, 0x4

    move-object v7, v5

    invoke-interface/range {v4 .. v9}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 794
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    .line 795
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    const/4 v0, 0x5

    .line 798
    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    if-eqz p1, :cond_6

    .line 803
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v1, v0

    .line 804
    invoke-interface {p1, v0, v2, v1}, Lcom/sshtools/common/ssh/compression/SshCompression;->uncompress([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    :cond_6
    return v4

    :cond_7
    return v2
.end method

.method private decodeETMPacketFormat(Ljava/nio/ByteBuffer;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    .line 825
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 830
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    invoke-static {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt([BI)J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    if-lez v0, :cond_3

    add-int/lit8 v3, v0, 0x4

    if-ltz v3, :cond_1

    add-int/2addr v0, v2

    .line 838
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 840
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v3

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    .line 854
    iget v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 855
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 856
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    goto :goto_2

    .line 841
    :cond_1
    :goto_0
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    add-int/lit8 v0, p1, 0x4

    if-gez v0, :cond_2

    .line 845
    const-string v0, " is too small"

    goto :goto_1

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 848
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " exceeds maximum supported length of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incoming packet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 841
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 849
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Disconnected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client sent invalid message length of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 863
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_a

    .line 868
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 869
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v0, v3, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_3

    .line 870
    :cond_5
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 875
    :goto_3
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 876
    invoke-virtual {p1, v3, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 882
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 883
    iget v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    if-nez p1, :cond_a

    .line 891
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    .line 894
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v3, :cond_7

    .line 895
    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    iget-object v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    const/4 v7, 0x0

    add-int/lit8 v8, p1, 0x4

    move-object v9, v6

    move v10, v8

    invoke-interface/range {v3 .. v10}, Lcom/sshtools/common/ssh/components/SshHmac;->verify(J[BII[BI)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    .line 898
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt Mac on input"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 904
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v3, :cond_8

    .line 905
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    const/4 v7, 0x4

    iget v8, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    const/4 v5, 0x4

    move-object v6, v4

    invoke-interface/range {v3 .. v8}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 911
    :cond_8
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    .line 912
    iget v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    sub-int v3, v2, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    const/4 v0, 0x5

    .line 915
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    if-eqz p1, :cond_9

    .line 920
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v2, v0

    .line 921
    invoke-interface {p1, v0, v1, v2}, Lcom/sshtools/common/ssh/compression/SshCompression;->uncompress([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    :cond_9
    return v4

    :cond_a
    return v1
.end method

.method private decodeOriginalPacketFormat(Ljava/nio/ByteBuffer;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 936
    iget-boolean v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_5

    .line 942
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    iget v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    invoke-virtual {v1, v2, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 945
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 946
    iget-object v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    iget-object v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v7, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    iget v10, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    move-object v8, v6

    move v9, v7

    invoke-interface/range {v5 .. v10}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 953
    :cond_0
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    invoke-static {v2, v5}, Lcom/sshtools/common/util/ByteArrayReader;->readInt([BI)J

    move-result-wide v5

    long-to-int v2, v5

    iput v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    if-lez v2, :cond_4

    add-int/lit8 v5, v2, 0x4

    if-ltz v5, :cond_2

    add-int/2addr v2, v4

    .line 961
    iget-object v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 963
    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v5

    if-le v2, v5, :cond_1

    goto :goto_0

    .line 975
    :cond_1
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    .line 976
    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    iget v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    add-int/lit8 v6, v5, -0x4

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    .line 977
    iget v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 981
    iput-boolean v3, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 982
    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    goto :goto_2

    .line 964
    :cond_2
    :goto_0
    iget v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    add-int/lit8 v2, v1, 0x4

    if-gez v2, :cond_3

    .line 968
    const-string v2, " is too small"

    goto :goto_1

    .line 970
    :cond_3
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 971
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " exceeds maximum supported length of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incoming packet length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 964
    invoke-virtual {v0, v2, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 972
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Disconnected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_4
    new-instance v1, Ljava/io/IOException;

    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client sent invalid message length of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_5
    :goto_2
    iget-boolean v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_c

    .line 994
    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 995
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v2, v5, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    goto :goto_3

    .line 996
    :cond_6
    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 1001
    :goto_3
    iget-object v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 1002
    invoke-virtual {v1, v5, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1008
    iget v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 1009
    iget v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    if-nez v1, :cond_c

    .line 1017
    iget v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    add-int/lit8 v10, v1, 0x4

    .line 1020
    iget-object v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v1, :cond_8

    .line 1021
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1022
    iget-object v11, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    iget-object v12, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v13, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    iget v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remaining:I

    move-object v14, v12

    move v15, v13

    move/from16 v16, v1

    invoke-interface/range {v11 .. v16}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    goto :goto_4

    .line 1026
    :cond_7
    iget-object v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    iget v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    add-int/2addr v5, v4

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v6

    add-int v21, v5, v6

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface/range {v16 .. v21}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 1027
    iget-object v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    .line 1032
    :cond_8
    :goto_4
    iget-object v5, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v5, :cond_a

    .line 1033
    iget-wide v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    iget-object v8, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v10

    invoke-interface/range {v5 .. v12}, Lcom/sshtools/common/ssh/components/SshHmac;->verify(J[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 1036
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt Mac on input"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1041
    :cond_a
    :goto_5
    iget v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->msglen:I

    iget v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->padlen:I

    sub-int v4, v1, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    .line 1044
    iget-object v6, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSwap:[B

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    const/4 v2, 0x5

    invoke-static {v6, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    iget-object v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    if-eqz v1, :cond_b

    .line 1049
    iget-object v2, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v4, v2

    .line 1050
    invoke-interface {v1, v2, v3, v4}, Lcom/sshtools/common/ssh/compression/SshCompression;->uncompress([BII)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    :cond_b
    return v5

    :cond_c
    return v3
.end method

.method private encodeChaCha20Poly1305FormatPacket(Ljava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    move-object v1, v0

    check-cast v1, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    .line 1256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 1257
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1264
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1265
    invoke-interface {v3, v2, v4, v0}, Lcom/sshtools/common/ssh/compression/SshCompression;->compress([BII)[B

    move-result-object v2

    .line 1270
    :cond_0
    array-length v0, v2

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    const/4 v3, 0x4

    add-int/2addr v0, v3

    .line 1273
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    new-instance v6, Lcom/sshtools/common/util/UnsignedInteger64;

    iget-wide v7, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    invoke-direct {v6, v7, v8}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v1, v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->writePacketLength(ILcom/sshtools/common/util/UnsignedInteger64;)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-byte v5, v0

    .line 1276
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1279
    array-length v5, v2

    invoke-virtual {p1, v2, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1280
    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->getMacLength()I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v2, v3

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    .line 1283
    new-array v0, v0, [B

    .line 1284
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1287
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v2

    add-int/2addr v0, v2

    new-array v2, v0, [B

    .line 1294
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    add-int/lit8 v6, v0, -0x4

    move-object v4, v2

    .line 1296
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->transform([BI[BII)V

    .line 1299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1302
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private encodeETMFormatPacket(Ljava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    .line 1314
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1315
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 1321
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v2, :cond_0

    .line 1322
    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1326
    :goto_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1327
    invoke-interface {v3, v1, v4, v0}, Lcom/sshtools/common/ssh/compression/SshCompression;->compress([BII)[B

    move-result-object v1

    .line 1332
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, 0x5

    rem-int/2addr v0, v2

    sub-int v0, v2, v0

    rem-int/2addr v0, v2

    const/4 v2, 0x4

    add-int/2addr v0, v2

    .line 1335
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte v3, v0

    .line 1338
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1341
    array-length v3, v1

    invoke-virtual {p1, v1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1342
    iget-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    .line 1345
    new-array v0, v0, [B

    .line 1346
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1349
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1351
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1355
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    goto :goto_1

    .line 1358
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    :goto_1
    move-object v4, v0

    .line 1361
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1365
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v3, :cond_3

    .line 1366
    array-length v0, v4

    add-int/lit8 v8, v0, -0x4

    const/4 v5, 0x4

    const/4 v7, 0x4

    move-object v6, v4

    invoke-interface/range {v3 .. v8}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 1370
    :cond_3
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v0, :cond_4

    .line 1371
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacLength()I

    move-result v0

    new-array v9, v0, [B

    .line 1372
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    move-object v6, v4

    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    array-length v8, v6

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/sshtools/common/ssh/components/SshHmac;->generate(J[BII[BI)V

    move-object v4, v6

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 1377
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1380
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_5

    .line 1383
    array-length v0, v9

    if-lez v0, :cond_5

    .line 1384
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1385
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    array-length p1, v9

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    :cond_5
    return-void
.end method

.method private encodeOriginalFormatPacket(Ljava/nio/ByteBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 1397
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1398
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1400
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 1401
    sget-object v7, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x20

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/util/Utils;->bytesToHex([BIIIZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v6}, Lcom/sshtools/common/logger/Log;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Z)V

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v1, :cond_1

    .line 1409
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 1413
    :goto_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1414
    invoke-interface {v3, v0, v4, v2}, Lcom/sshtools/common/ssh/compression/SshCompression;->compress([BII)[B

    move-result-object v0

    .line 1419
    :cond_2
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1420
    array-length v2, v0

    add-int/lit8 v2, v2, 0x5

    rem-int/2addr v2, v1

    sub-int v2, v1, v2

    rem-int/2addr v2, v1

    add-int/2addr v2, v3

    goto :goto_1

    .line 1422
    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    rem-int/2addr v2, v1

    sub-int v2, v1, v2

    rem-int/2addr v2, v1

    add-int/2addr v2, v3

    .line 1426
    :goto_1
    array-length v1, v0

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    .line 1427
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte v5, v2

    .line 1430
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1433
    array-length v5, v0

    invoke-virtual {p1, v0, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1434
    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    array-length v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    .line 1437
    new-array v0, v2, [B

    .line 1438
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1441
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1443
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1447
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1448
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    goto :goto_2

    .line 1450
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    :goto_2
    move-object v6, v0

    .line 1452
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v6, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1456
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v0, :cond_5

    .line 1457
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacLength()I

    move-result v0

    new-array v11, v0, [B

    .line 1458
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    move-object v8, v6

    iget-wide v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    array-length v10, v8

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v12}, Lcom/sshtools/common/ssh/components/SshHmac;->generate(J[BII[BI)V

    goto :goto_3

    :cond_5
    move-object v8, v6

    const/4 v11, 0x0

    .line 1463
    :goto_3
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v0, :cond_7

    .line 1464
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1465
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    const/4 v9, 0x0

    add-int/lit8 v10, v1, 0x4

    const/4 v7, 0x0

    move-object v6, v8

    invoke-interface/range {v5 .. v10}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    goto :goto_4

    .line 1467
    :cond_6
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v0, v8}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([B)V

    .line 1472
    :cond_7
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1475
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v11, :cond_8

    .line 1478
    array-length v0, v11

    if-lez v0, :cond_8

    .line 1479
    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1480
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    array-length p1, v11

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    :cond_8
    return-void
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 2801
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2803
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "System does not support "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processExtensionInfo([B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2542
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 2545
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 2546
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 2548
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2549
    const-string v1, "Server supports {} extensions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_8

    .line 2554
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2555
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2557
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "delay-compression"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_2

    :sswitch_1
    const-string v5, "elevation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_2

    :sswitch_2
    const-string v5, "accept-channels"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_2

    :sswitch_3
    const-string v5, "server-sig-algs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :sswitch_4
    const-string v5, "no-flow-control"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_2

    .line 2585
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2586
    const-string v5, "Remote side reported unsupported element {} in ext-info with a value of {}"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2580
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2581
    const-string v3, "Remote side supports compression re-negotiation"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2575
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2576
    const-string v3, "Remote side requested elevation value of {}"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2570
    :cond_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2571
    const-string v3, "Remote side accepts the following channels {}"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2565
    :cond_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2566
    const-string v3, "Remote side requested no flow control"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2559
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v3

    const-class v5, Lcom/sshtools/common/policy/SignaturePolicy;

    new-instance v6, Lcom/sshtools/common/policy/SignaturePolicy;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sshtools/common/policy/SignaturePolicy;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v6}, Lcom/sshtools/synergy/ssh/SshContext;->setPolicy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2560
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2561
    const-string v3, "Remote side supports the signature algorithms {}"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2597
    :cond_8
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2598
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x534e8bb6 -> :sswitch_4
        -0x1dbcb6e3 -> :sswitch_3
        -0x1a94e50b -> :sswitch_2
        -0x42d1a3 -> :sswitch_1
        0x6a03f81c -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized sendLocalIdentification()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendLocalIdentification(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized sendLocalIdentification(ZLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    .line 416
    new-instance v0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol$1;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addEventListener(Lcom/sshtools/synergy/ssh/TransportProtocolListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->transportListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected abstract canConnect(Lcom/sshtools/synergy/nio/SocketConnection;)Z
.end method

.method protected canSendKeyExchangeInit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "TT;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2203
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localkex:[B

    .line 2204
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotekex:[B

    const/4 p1, 0x1

    .line 2205
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    .line 2207
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onKeyExchangeComplete()V

    .line 2209
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/events/Event;

    const v2, -0xfffff9

    invoke-direct {v1, p0, v2, p1}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string p1, "CONNECTION"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 2214
    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_PUBLICKEY"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->publicKey:Ljava/lang/String;

    .line 2217
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_KEY_EXCHANGE"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 2220
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_CS_CIPHER"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    .line 2223
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_SC_CIPHERC"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    .line 2226
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_CS_MAC"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    .line 2229
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_SC_MAC"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    .line 2232
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_CS_COMPRESSION"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    .line 2235
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v1, "USING_SC_COMPRESSION"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    .line 2238
    invoke-virtual {p1, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 2210
    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    const/4 p1, 0x3

    .line 2242
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->setTransportState(I)V

    return-void
.end method

.method public disconnect(ILjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1527
    const-string p2, "Failure"

    .line 1528
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    .line 1529
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1531
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1530
    const-string v1, "Disconnect {} {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1534
    :cond_1
    new-instance v0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method protected abstract disconnected()V
.end method

.method protected generateNewKeysClientIn()V
    .locals 7

    const-string v0, "Failed to create a transport component! "

    .line 2429
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockIn:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2432
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    if-nez v3, :cond_0

    .line 2433
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    .line 2438
    :cond_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    .line 2439
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshCipher;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2441
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v4

    const/16 v5, 0x42

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2442
    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v5

    const/16 v6, 0x44

    invoke-virtual {p0, v6, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v5

    const/4 v6, 0x1

    .line 2441
    invoke-interface {v3, v6, v4, v5}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 2444
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2445
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    .line 2446
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshHmac;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    .line 2447
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacSize()I

    move-result v4

    const/16 v5, 0x46

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    .line 2448
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacLength()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    goto :goto_0

    .line 2450
    :cond_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    :goto_0
    const/4 v3, 0x0

    .line 2453
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2455
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2456
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 2457
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/compression/SshCompression;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2460
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getCompressionLevel()I

    move-result v4

    .line 2459
    invoke-interface {v3, v2, v4}, Lcom/sshtools/common/ssh/compression/SshCompression;->init(II)V

    .line 2463
    :cond_2
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    .line 2465
    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    if-eqz v3, :cond_4

    .line 2466
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2467
    const-string v3, "Resetting INCOMING sequence from {} to zero for strict transport protocol requirements"

    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v3, 0x0

    .line 2469
    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 2472
    :cond_4
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->hasSentNewKeys()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2473
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 2477
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2478
    const-string v4, "Failed to create transport component"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2479
    :cond_5
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v4, v3}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->setLastError(Ljava/lang/Throwable;)V

    .line 2480
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v4, v2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->done(Z)V

    .line 2481
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 2485
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 2482
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 2487
    :cond_6
    :goto_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected generateNewKeysClientOut()V
    .locals 7

    const-string v0, "Failed to create a transport component! "

    .line 2373
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2376
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    if-nez v3, :cond_0

    .line 2377
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    .line 2381
    :cond_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    .line 2382
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshCipher;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2384
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v4

    const/16 v5, 0x41

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2385
    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v5

    const/16 v6, 0x43

    invoke-virtual {p0, v6, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v5

    .line 2384
    invoke-interface {v3, v2, v4, v5}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 2387
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2388
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    .line 2389
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshHmac;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    .line 2390
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacSize()I

    move-result v4

    const/16 v5, 0x45

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    :cond_1
    const/4 v3, 0x0

    .line 2393
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2395
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2396
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 2397
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/compression/SshCompression;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2400
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getCompressionLevel()I

    move-result v4

    const/4 v5, 0x1

    .line 2399
    invoke-interface {v3, v5, v4}, Lcom/sshtools/common/ssh/compression/SshCompression;->init(II)V

    .line 2403
    :cond_2
    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    if-eqz v3, :cond_4

    .line 2404
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2405
    const-string v3, "Resetting OUTGOING sequence from {} to zero for strict transport protocol requirements"

    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v3, 0x0

    .line 2407
    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    .line 2410
    :cond_4
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->hasReceivedNewKeys()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2411
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 2415
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2416
    const-string v4, "Failed to create transport component"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2417
    :cond_5
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v4, v2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->done(Z)V

    .line 2418
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 2422
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 2419
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 2424
    :cond_6
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected generateNewKeysServerIn()V
    .locals 7

    const-string v0, "Failed to create a transport component! "

    .line 2310
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockIn:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2313
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    if-nez v3, :cond_0

    .line 2314
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    .line 2319
    :cond_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    .line 2320
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshCipher;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2322
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v4

    const/16 v5, 0x41

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2323
    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v5

    const/16 v6, 0x43

    invoke-virtual {p0, v6, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v5

    const/4 v6, 0x1

    .line 2322
    invoke-interface {v3, v6, v4, v5}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 2325
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2326
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    .line 2327
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshHmac;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    .line 2328
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacSize()I

    move-result v4

    const/16 v5, 0x45

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    .line 2329
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacLength()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    goto :goto_0

    .line 2331
    :cond_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getMacLength()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMacLength:I

    :goto_0
    const/4 v3, 0x0

    .line 2334
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2336
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2337
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 2338
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/compression/SshCompression;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2341
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getCompressionLevel()I

    move-result v4

    .line 2340
    invoke-interface {v3, v2, v4}, Lcom/sshtools/common/ssh/compression/SshCompression;->init(II)V

    .line 2344
    :cond_2
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v3

    iput v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    .line 2346
    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    if-eqz v3, :cond_4

    .line 2347
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2348
    const-string v3, "Resetting INCOMING sequence from {} to zero for strict transport protocol requirements"

    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v3, 0x0

    .line 2350
    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 2353
    :cond_4
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->hasSentNewKeys()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2354
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 2358
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2359
    const-string v4, "Failed to create transport component"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2360
    :cond_5
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v4, v2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->done(Z)V

    .line 2361
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 2365
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 2362
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 2367
    :cond_6
    :goto_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected generateNewKeysServerOut()V
    .locals 8

    const-string v0, "Failed to create a transport component! "

    .line 2248
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2251
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    if-nez v3, :cond_0

    .line 2252
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    .line 2256
    :cond_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    .line 2257
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshCipher;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2259
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v4

    const/16 v5, 0x42

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    .line 2260
    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v5

    const/16 v6, 0x44

    invoke-virtual {p0, v6, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v5

    .line 2259
    invoke-interface {v3, v2, v4, v5}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 2262
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshCipher;->isMAC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2263
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    .line 2264
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/components/SshHmac;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    .line 2265
    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacSize()I

    move-result v4

    const/16 v5, 0x46

    invoke-virtual {p0, v5, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->makeSshKey(CI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    :cond_1
    const/4 v3, 0x0

    .line 2268
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2270
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2271
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 2272
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/compression/SshCompression;

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingCompression:Lcom/sshtools/common/ssh/compression/SshCompression;

    .line 2275
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getCompressionLevel()I

    move-result v4

    const/4 v5, 0x1

    .line 2274
    invoke-interface {v3, v5, v4}, Lcom/sshtools/common/ssh/compression/SshCompression;->init(II)V

    .line 2278
    :cond_2
    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 2279
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2280
    const-string v3, "Resetting OUTGOING sequence from {} to zero for strict transport protocol requirements"

    iget-wide v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2282
    :cond_3
    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    .line 2285
    :cond_4
    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z

    if-eqz v3, :cond_6

    .line 2286
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2287
    const-string v3, "Resetting OUTGOING sequence from {} to zero for strict transport protocol requirements"

    iget-wide v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2289
    :cond_5
    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    .line 2292
    :cond_6
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->hasReceivedNewKeys()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2293
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 2297
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2298
    const-string v4, "Failed to create transport component"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2299
    :cond_7
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v4, v2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->done(Z)V

    .line 2300
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-eqz v2, :cond_8

    .line 2304
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 2301
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 2306
    :cond_8
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;
    .locals 1

    .line 2904
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->authenticatedFuture:Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    return-object v0
.end method

.method public getCipherCS()Ljava/lang/String;
    .locals 1

    .line 2602
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherSC()Ljava/lang/String;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionCS()Ljava/lang/String;
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionSC()Ljava/lang/String;
    .locals 1

    .line 2622
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    return-object v0
.end method

.method public getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/sshtools/synergy/ssh/SshContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    return-object v0
.end method

.method public getDisconnectFuture()Lcom/sshtools/synergy/nio/DisconnectRequestFuture;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    return-object v0
.end method

.method public getExecutor()Lcom/sshtools/common/ssh/ExecutorOperationSupport;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/ExecutorOperationSupport<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method protected abstract getExtensionNegotiationString()Ljava/lang/String;
.end method

.method public getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getHostKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .line 2817
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKeyInUse()Ljava/lang/String;
    .locals 1

    .line 2896
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyExchangeAlgorithm()Ljava/lang/String;
    .locals 1

    .line 2825
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyExchangeInUse()Ljava/lang/String;
    .locals 1

    .line 2892
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIdentification()Ljava/lang/String;
    .locals 1

    .line 2900
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMacCS()Ljava/lang/String;
    .locals 1

    .line 2610
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    return-object v0
.end method

.method public getMacSC()Ljava/lang/String;
    .locals 1

    .line 2614
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueSizes()I
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1075
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRND()Ljava/security/SecureRandom;
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->rnd:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCiphersCS()[Ljava/lang/String;
    .locals 2

    .line 2837
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersCS:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCiphersSC()[Ljava/lang/String;
    .locals 2

    .line 2841
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersSC:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCompressionsCS()[Ljava/lang/String;
    .locals 2

    .line 2853
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSCompressions:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCompressionsSC()[Ljava/lang/String;
    .locals 2

    .line 2857
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCCompressions:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIdentification()Ljava/lang/String;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyExchanges()[Ljava/lang/String;
    .locals 2

    .line 2829
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMacsCS()[Ljava/lang/String;
    .locals 2

    .line 2845
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSMacs:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMacsSC()[Ljava/lang/String;
    .locals 2

    .line 2849
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCMacs:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getPort()I

    move-result v0

    return v0
.end method

.method public getRemotePublicKeys()[Ljava/lang/String;
    .locals 2

    .line 2833
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionKey()[B
    .locals 1

    .line 2796
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    return-object v0
.end method

.method public getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    return-object v0
.end method

.method public getSshContext()Lcom/sshtools/synergy/ssh/SshContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1486
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletedKeyExchange()Z
    .locals 1

    .line 2861
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    return v0
.end method

.method public idle()Z
    .locals 11

    .line 1085
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1088
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastActivity:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 1090
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasCompletedKeyExchange()Z

    move-result v5

    const-string v6, "Idle time of {} seconds exceeded threshold of {} seconds"

    const/16 v7, 0xb

    if-nez v5, :cond_2

    .line 1091
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleAuthenticationTimeoutSeconds()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1092
    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleAuthenticationTimeoutSeconds()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v8, v0

    if-gez v5, :cond_2

    .line 1093
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1096
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleAuthenticationTimeoutSeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1094
    invoke-static {v6, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1099
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleAuthenticationTimeoutSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1098
    const-string v1, "Remote exceeded idle timeout of %d seconds for unauthenticated connections"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    return v2

    .line 1103
    :cond_2
    iget v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 1104
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1105
    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v9, v0

    if-gez v5, :cond_4

    .line 1106
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1109
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1107
    invoke-static {v6, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1112
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1111
    const-string v1, "Remote exceeded idle timeout of %d seconds for authenticated connections"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    return v2

    .line 1117
    :cond_4
    iget v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    if-eq v5, v8, :cond_5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 1119
    :cond_5
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->isSendIgnorePacketOnIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1120
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveInterval()I

    move-result v5

    if-lez v5, :cond_7

    .line 1121
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveInterval()I

    move-result v5

    int-to-long v5, v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_7

    .line 1123
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveInterval()I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    .line 1125
    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastKeepAlive:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_6

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastKeepAlive:J

    sub-long/2addr v0, v5

    div-long/2addr v0, v3

    .line 1129
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveInterval()I

    move-result v2

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-lez v0, :cond_7

    .line 1130
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->ignoreMessage:Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastKeepAlive:J

    .line 1138
    :cond_7
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/sshtools/synergy/ssh/Service;->getIdleTimeoutSeconds()I

    move-result v0

    if-lez v0, :cond_8

    .line 1139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastIdleEvent:J

    sub-long/2addr v0, v5

    div-long/2addr v0, v3

    .line 1140
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/Service;->getIdleTimeoutSeconds()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastIdleEvent:J

    .line 1142
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    invoke-interface {v0}, Lcom/sshtools/synergy/ssh/Service;->idle()Z

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initializeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "TT;>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public isConnected()Z
    .locals 3

    .line 506
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isDisonnecting()Z
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isExtensionNegotiationSupported()Z
.end method

.method public isSelectorThread()Z
    .locals 2

    .line 2888
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SocketConnection;->getSelectorThread()Lcom/sshtools/synergy/nio/SelectorThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract isServerMode()Z
.end method

.method protected keyExchangeInitialized()V
    .locals 0

    return-void
.end method

.method public kill()V
    .locals 1

    .line 2809
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketClose()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketClose()V

    .line 2813
    throw v0
.end method

.method makeSshKey(CI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2665
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2670
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    .line 2671
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    .line 2672
    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/Digest;

    .line 2675
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getSecret()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 2678
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    int-to-byte p1, p1

    .line 2681
    invoke-interface {v1, p1}, Lcom/sshtools/common/ssh/components/Digest;->putByte(B)V

    .line 2684
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    invoke-interface {v1, p1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 2687
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p1

    .line 2689
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 2691
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->size()I

    move-result v2

    if-ge v2, p2, :cond_0

    .line 2693
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->reset()V

    .line 2696
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getSecret()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 2699
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 2702
    invoke-interface {v1, p1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 2704
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p1

    .line 2707
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    goto :goto_0

    .line 2711
    :cond_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2714
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2715
    throw p1
.end method

.method negotiateProtocol(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processBinaryPackets(Ljava/nio/ByteBuffer;)Z

    return-void

    .line 524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_5

    .line 525
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 529
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSH-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->startBinaryProtocol()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentLocalIdentification:Z

    if-eqz v0, :cond_5

    .line 532
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->canSendKeyExchangeInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 538
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processBinaryPackets(Ljava/nio/ByteBuffer;)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processNegotiationString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 547
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    const-string v1, "Bad value in negotiation string!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 549
    :cond_3
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V

    return-void

    .line 556
    :cond_4
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected abstract onConnected()V
.end method

.method protected abstract onDisconnected()V
.end method

.method protected onKeyExchangeComplete()V
    .locals 0

    return-void
.end method

.method protected abstract onKeyExchangeInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method protected abstract onNewKeysReceived()V
.end method

.method protected abstract onNewKeysSent()V
.end method

.method protected onRemoteIdentificationReceived(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSocketClose()V
    .locals 4

    .line 1542
    monitor-enter p0

    .line 1543
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->closed:Z

    if-nez v0, :cond_9

    .line 1544
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    const/4 v1, 0x1

    .line 1546
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->closed:Z

    .line 1548
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    const-string v1, "Connection closed {}"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1550
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1549
    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1553
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 1554
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    .line 1556
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1557
    const-string v1, "Performing internal disconnect {}"

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x4

    .line 1559
    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->setTransportState(I)V

    .line 1561
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1562
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/DisconnectRequestFuture;->disconnected()V

    .line 1563
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    if-eqz v1, :cond_3

    .line 1566
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SocketConnection;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sshtools/common/nio/IdleStateManager;->remove(Lcom/sshtools/common/nio/IdleStateListener;)V

    .line 1568
    :cond_3
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1569
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1570
    const-string v1, "Stopping the active service"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    :cond_4
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    invoke-interface {v1}, Lcom/sshtools/synergy/ssh/Service;->stop()V

    .line 1574
    :cond_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1575
    const-string v1, "Logging off user"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    :cond_6
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->transportListeners:Ljava/util/List;

    .line 1578
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/synergy/ssh/TransportProtocolListener;

    invoke-interface {v3, p0}, Lcom/sshtools/synergy/ssh/TransportProtocolListener;->onDisconnect(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    goto :goto_0

    .line 1582
    :cond_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1583
    const-string v1, "Submitting transport cleanup to executor service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 1588
    sget-object v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->EVENTS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    new-instance v3, Lcom/sshtools/synergy/ssh/TransportProtocol$3;

    invoke-direct {v3, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol$3;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    invoke-direct {v2, v0, v3}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1563
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1624
    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onSocketConnect(Lcom/sshtools/synergy/nio/SocketConnection;)V
    .locals 9

    .line 351
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    .line 353
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    .line 355
    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    .line 356
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SocketConnection;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 354
    const-string v1, "Connnection created {} on interface {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->canConnect(Lcom/sshtools/synergy/nio/SocketConnection;)Z

    move-result v0

    const-string v1, "OP_FINISHED"

    const-string v2, "OP_STARTED"

    const-string v3, "CONNECTION"

    const v4, -0xffffff

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 360
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "Access denied by TransportProtocol.canConnect"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_1
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v6, Lcom/sshtools/common/events/Event;

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Access Denied"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p0, v4, v7}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 366
    invoke-virtual {v6, v3, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->started:Ljava/util/Date;

    .line 369
    invoke-virtual {v3, v2, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 372
    invoke-virtual {v2, v1, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 364
    invoke-interface {v0, v1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 376
    invoke-virtual {p1, v5}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection(Z)V

    return-void

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sshtools/common/nio/IdleStateManager;->register(Lcom/sshtools/common/nio/IdleStateListener;)V

    .line 382
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onConnected()V

    .line 384
    iget-boolean p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentLocalIdentification:Z

    if-nez p1, :cond_3

    .line 386
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object p1

    new-instance v0, Lcom/sshtools/common/events/Event;

    const/4 v6, 0x1

    invoke-direct {v0, p0, v4, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 388
    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->started:Ljava/util/Date;

    .line 391
    invoke-virtual {v0, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 386
    invoke-interface {p1, v0}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 398
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getSoftwareVersionComments()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    .line 401
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->isHttpRedirect()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 402
    invoke-direct {p0, v5, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendLocalIdentification(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSocketRead(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 459
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "Processing APPLICATION READ data"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processBinaryPackets(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 469
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->negotiateProtocol(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 477
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->setLastError(Ljava/lang/Throwable;)V

    .line 478
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 480
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 479
    const-string v2, "Read error from {} {}"

    invoke-static {v2, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    const-string v0, "Connection closed on socket read"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 485
    :cond_4
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V

    :goto_0
    return v1
.end method

.method public onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;
    .locals 9

    .line 1154
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1155
    const-string v0, "Processing APPLICATION WRITE event"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 1161
    :try_start_0
    iget-wide v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1163
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1164
    :try_start_1
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    goto/16 :goto_3

    .line 1167
    :cond_2
    :goto_0
    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    if-eqz v4, :cond_4

    .line 1169
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1170
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/sshd/SshMessage;

    .line 1171
    invoke-interface {v4, p1}, Lcom/sshtools/common/sshd/SshMessage;->writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1172
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 1177
    :cond_3
    monitor-exit v3

    return-object v0

    .line 1180
    :cond_4
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1181
    :try_start_2
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/sshd/SshMessage;

    .line 1182
    invoke-interface {v5, p1}, Lcom/sshtools/common/sshd/SshMessage;->writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1183
    iget-object v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1185
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 1188
    :cond_6
    :goto_1
    :try_start_3
    iget v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    .line 1190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 1192
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->encryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v5, :cond_7

    instance-of v5, v5, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    if-eqz v5, :cond_7

    .line 1193
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->encodeChaCha20Poly1305FormatPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 1194
    :cond_7
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshHmac;->isETM()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1195
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->encodeETMFormatPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 1197
    :cond_8
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->encodeOriginalFormatPacket(Ljava/nio/ByteBuffer;)V

    .line 1200
    :goto_2
    iget v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingBytesSinceKEX:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr v5, p1

    iput v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingBytesSinceKEX:I

    .line 1201
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingPacketsSinceKEX:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingPacketsSinceKEX:I

    .line 1203
    iget-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    const-wide v7, 0x100000000L

    cmp-long p1, v5, v7

    if-ltz p1, :cond_9

    const-wide/16 v5, 0x0

    .line 1206
    iput-wide v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingSequence:J

    .line 1214
    :cond_9
    :goto_3
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingBytesSinceKEX:I

    int-to-long v5, p1

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    .line 1215
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangeTransferLimit()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingPacketsSinceKEX:I

    int-to-long v5, p1

    .line 1216
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangePacketLimit()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-ltz p1, :cond_b

    .line 1218
    :cond_a
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 1221
    :cond_b
    new-instance p1, Lcom/sshtools/synergy/ssh/TransportProtocol$2;

    invoke-direct {p1, p0, v4, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol$2;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/common/sshd/SshMessage;Ljava/lang/Long;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1185
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 1235
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 1237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1238
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1239
    const-string v2, "Write error from {} {}"

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1240
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1239
    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    :cond_c
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1244
    const-string v2, "Connection closed on socket write"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1246
    :cond_d
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V

    return-object v0
.end method

.method performKeyExchange([B)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/nio/WriteOperationRequest;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1662
    const-string v2, "CONNECTION"

    .line 0
    const-string v3, "Unexpected protocol termination: "

    .line 1664
    iget-boolean v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    if-nez v0, :cond_0

    .line 1665
    invoke-direct {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendLocalIdentification()V

    .line 1668
    :cond_0
    invoke-direct {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkAlgorithms()V

    const/4 v0, 0x2

    const/4 v5, 0x0

    .line 1674
    :try_start_0
    iput v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    move-object/from16 v0, p1

    .line 1678
    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotekex:[B

    .line 1680
    new-instance v6, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotekex:[B

    array-length v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v7}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v9, 0x11

    .line 1681
    :try_start_1
    invoke-virtual {v6, v9, v10}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 1683
    const-string v0, "key exchange"

    .line 1684
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1683
    invoke-direct {v1, v0, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    .line 1685
    const-string v0, "public key"

    .line 1686
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1685
    invoke-direct {v1, v0, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    .line 1687
    const-string v0, "client->server cipher"

    .line 1688
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1687
    invoke-direct {v1, v0, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersCS:Ljava/lang/String;

    .line 1689
    const-string v0, "server->client cipher"

    .line 1690
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1689
    invoke-direct {v1, v0, v5}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersSC:Ljava/lang/String;

    .line 1691
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSMacs:Ljava/lang/String;

    .line 1692
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCMacs:Ljava/lang/String;

    .line 1693
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSCompressions:Ljava/lang/String;

    .line 1694
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCCompressions:Ljava/lang/String;

    .line 1696
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    const-string v5, "ext-info-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasExtensionCapability:Z

    .line 1698
    iget-boolean v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    .line 1699
    :try_start_2
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isServerMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "kex-strict-c-v00@openssh.com"

    goto :goto_0

    :cond_1
    const-string v5, "kex-strict-s-v00@openssh.com"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->isKexStrict:Z
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v5, v6

    goto/16 :goto_6

    .line 1703
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 1704
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1706
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v8

    .line 1708
    :goto_2
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onKeyExchangeInit()V

    .line 1711
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 1714
    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v7}, Lcom/sshtools/synergy/ssh/SshContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v7

    iget-object v9, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1715
    invoke-virtual {v9}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredKeyExchange()Ljava/lang/String;

    move-result-object v9

    .line 1714
    invoke-virtual {v7, v9}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1717
    iget-object v9, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1718
    invoke-virtual {v9}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v9

    iget-object v10, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1720
    invoke-virtual {v10}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCipherCS()Ljava/lang/String;

    move-result-object v10

    .line 1719
    invoke-virtual {v9, v10}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1722
    iget-object v10, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1723
    invoke-virtual {v10}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v10

    iget-object v11, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1725
    invoke-virtual {v11}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCipherSC()Ljava/lang/String;

    move-result-object v11

    .line 1724
    invoke-virtual {v10, v11}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1727
    iget-object v11, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v11}, Lcom/sshtools/synergy/ssh/SshContext;->getPublicKeys()Ljava/lang/String;

    move-result-object v11

    .line 1729
    iget-object v12, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1730
    invoke-virtual {v12}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v12

    iget-object v13, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1732
    invoke-virtual {v13}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredMacCS()Ljava/lang/String;

    move-result-object v13

    .line 1731
    invoke-virtual {v12, v13}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1735
    iget-object v13, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1736
    invoke-virtual {v13}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v13

    iget-object v14, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1738
    invoke-virtual {v14}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredMacSC()Ljava/lang/String;

    move-result-object v14

    .line 1737
    invoke-virtual {v13, v14}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1740
    iget-object v14, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1741
    invoke-virtual {v14}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v14

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1743
    invoke-virtual {v15}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCompressionCS()Ljava/lang/String;

    move-result-object v15

    .line 1742
    invoke-virtual {v14, v15}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1745
    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1746
    invoke-virtual {v15}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v15

    iget-object v8, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1748
    invoke-virtual {v8}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCompressionSC()Ljava/lang/String;

    move-result-object v8

    .line 1747
    invoke-virtual {v15, v8}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1750
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v15
    :try_end_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v15, :cond_4

    .line 1751
    :try_start_4
    const-string v15, "Remote Key Exchanges: {}"

    iget-object v4, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    const-string v4, "Remote Public Keys: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    const-string v4, "Remote Ciphers CS: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersCS:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    const-string v4, "Remote Ciphers SC: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersSC:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1755
    const-string v4, "Remote Macs CS: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSMacs:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1756
    const-string v4, "Remote Macs SC: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCMacs:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    const-string v4, "Remote Compression CS: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSCompressions:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    const-string v4, "Remote Compression SC: {}"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCCompressions:Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1759
    const-string v4, "Lang: {}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    const-string v0, "First Packet Follows: {}"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1761
    const-string v0, "Local Key Exchanges: {}"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    const-string v0, "Local Public Keys: {}"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    const-string v0, "Local Ciphers CS: {}"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1764
    const-string v0, "Local Ciphers SC: {}"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1765
    const-string v0, "Local Macs CS: {}"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    const-string v0, "Local Macs SC: {}"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    const-string v0, "Local Compression CS: {}"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1768
    const-string v0, "Local Compression SC: {}"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1772
    :cond_4
    :try_start_5
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    invoke-virtual {v1, v0, v7}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 1774
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1775
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    iget-object v4, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    .line 1778
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    iget-object v4, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1779
    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getSupportedPublicKeys()Ljava/lang/String;

    move-result-object v4

    .line 1778
    invoke-virtual {v1, v0, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->publicKey:Ljava/lang/String;

    .line 1782
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    iget-object v4, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1783
    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredKeyExchange()Ljava/lang/String;

    move-result-object v4

    .line 1782
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_5

    :try_start_6
    iget-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    iget-object v4, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 1785
    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredPublicKey()Ljava/lang/String;

    move-result-object v4

    .line 1784
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 1788
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v4

    new-instance v15, Lcom/sshtools/common/events/Event;
    :try_end_7
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 p1, v6

    const v6, -0xfffffb

    move-object/from16 v16, v3

    const/4 v3, 0x1

    :try_start_8
    invoke-direct {v15, v1, v6, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1793
    invoke-virtual {v15, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_KEY_EXCHANGES"

    iget-object v15, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteKeyExchanges:Ljava/lang/String;

    .line 1796
    invoke-virtual {v3, v6, v15}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_KEY_EXCHANGES"

    .line 1799
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_PUBLICKEYS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remotePublicKeys:Ljava/lang/String;

    .line 1802
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_PUBLICKEYS"

    .line 1805
    invoke-virtual {v3, v6, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_CIPHERS_CS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersCS:Ljava/lang/String;

    .line 1808
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_CIPHERS_CS"

    .line 1811
    invoke-virtual {v3, v6, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_CIPHERS_SC"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersSC:Ljava/lang/String;

    .line 1814
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_CIPHERS_SC"

    .line 1817
    invoke-virtual {v3, v6, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_CS_MACS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSMacs:Ljava/lang/String;

    .line 1820
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_CS_MACS"

    .line 1823
    invoke-virtual {v3, v6, v12}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_SC_MACS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCMacs:Ljava/lang/String;

    .line 1826
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_SC_MACS"

    .line 1829
    invoke-virtual {v3, v6, v13}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_CS_COMPRESSIONS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSCompressions:Ljava/lang/String;

    .line 1832
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_CS_COMPRESSIONS"

    .line 1835
    invoke-virtual {v3, v6, v14}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "REMOTE_SC_COMPRESSIONS"

    iget-object v7, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCCompressions:Ljava/lang/String;

    .line 1838
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v6, "LOCAL_SC_COMPRESSIONS"

    .line 1841
    invoke-virtual {v3, v6, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1789
    invoke-interface {v4, v3}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1845
    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-virtual {v1, v3, v5, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->initializeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;ZZ)V

    .line 1847
    const-string v0, "client->server cipher list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersCS:Ljava/lang/String;

    .line 1848
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    invoke-virtual {v1, v0, v9}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    .line 1851
    const-string v0, "server->client cipher list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCiphersSC:Ljava/lang/String;

    .line 1852
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    invoke-virtual {v1, v0, v10}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    .line 1855
    const-string v0, "client->server hmac list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSMacs:Ljava/lang/String;

    .line 1856
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    invoke-virtual {v1, v0, v12}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    .line 1859
    const-string v0, "server->client hmac list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCMacs:Ljava/lang/String;

    .line 1860
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    invoke-virtual {v1, v0, v13}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    .line 1863
    const-string v0, "client->server compression list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteCSCompressions:Ljava/lang/String;

    .line 1864
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    invoke-virtual {v1, v0, v14}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    .line 1868
    const-string v0, "server->client compression list"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteSCCompressions:Ljava/lang/String;

    .line 1869
    invoke-direct {v1, v0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkValidString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1868
    invoke-virtual {v1, v0, v8}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    .line 1873
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1874
    const-string v0, "Negotiated Key Exchange: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeAlgorithm:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    const-string v0, "Negotiated Public Key: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->publicKey:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1876
    const-string v0, "Negotiated Cipher CS: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherCS:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1877
    const-string v0, "Negotiated Cipher SC: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->cipherSC:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1878
    const-string v0, "Negotiated Mac CS: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->macCS:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1879
    const-string v0, "Negotiated Mac SC: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->macSC:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1880
    const-string v0, "Negotiated Compression CS: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionCS:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1881
    const-string v0, "Negotiated Compression SC: {}"

    iget-object v3, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->compressionSC:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1884
    :cond_6
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchangeInitialized()V
    :try_end_8
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1899
    invoke-virtual/range {p1 .. p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 p1, v6

    :goto_4
    move-object/from16 v5, p1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 p1, v6

    :goto_5
    move-object/from16 v5, p1

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 1887
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1888
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1890
    :cond_7
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v3

    new-instance v4, Lcom/sshtools/common/events/Event;

    const v6, -0xfffffa

    const/4 v7, 0x1

    invoke-direct {v4, v1, v6, v7}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v6, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1893
    invoke-virtual {v4, v2, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1890
    invoke-interface {v3, v2}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1895
    new-instance v2, Ljava/io/IOException;

    .line 1896
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_7
    if-eqz v5, :cond_8

    .line 1899
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1901
    :cond_8
    throw v0
.end method

.method public postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    .locals 1

    .line 2641
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->ignoreMessage:Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;

    if-nez v0, :cond_0

    .line 2642
    invoke-virtual {p0, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->resetIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 2643
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V

    return-void
.end method

.method public postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
    .locals 3

    .line 2649
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Posting message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2653
    iget-boolean p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    goto :goto_0

    .line 2654
    :cond_1
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    .line 2655
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v0

    .line 2656
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2657
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->flagWrite()V

    return-void

    :catchall_0
    move-exception p1

    .line 2657
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method processBinaryPackets(Ljava/nio/ByteBuffer;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    if-eqz v3, :cond_1

    .line 622
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingCipherLength:I

    if-gt v3, v4, :cond_2

    :cond_1
    iget v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    if-lez v3, :cond_e

    .line 623
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_2
    if-nez v1, :cond_e

    .line 631
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockIn:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 633
    :try_start_1
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->decryption:Lcom/sshtools/common/ssh/components/SshCipher;

    if-eqz v4, :cond_3

    instance-of v4, v4, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    if-eqz v4, :cond_3

    .line 634
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->decodeChaCha20Poly1305Format(Ljava/nio/ByteBuffer;)Z

    move-result v4

    goto :goto_1

    .line 635
    :cond_3
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingMac:Lcom/sshtools/common/ssh/components/SshHmac;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/sshtools/common/ssh/components/SshHmac;->isETM()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->decodeETMPacketFormat(Ljava/nio/ByteBuffer;)Z

    move-result v4

    goto :goto_1

    .line 638
    :cond_4
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->decodeOriginalPacketFormat(Ljava/nio/ByteBuffer;)Z

    move-result v4

    .line 641
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x100000000L

    .line 651
    :try_start_2
    iget-object v8, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    iget-wide v9, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    invoke-virtual {p0, v8, v9, v10}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processMessage([BJ)V
    :try_end_2
    .catch Lcom/sshtools/common/nio/WriteOperationRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    :try_start_3
    iget-wide v8, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    cmp-long v6, v8, v6

    if-ltz v6, :cond_5

    .line 657
    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 660
    :cond_5
    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    iget-object v6, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v7, v6

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    .line 662
    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    array-length v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    .line 663
    iget v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v4

    .line 666
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v6

    .line 667
    invoke-virtual {v6}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangeTransferLimit()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v4

    .line 668
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v6

    .line 669
    invoke-virtual {v6}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangePacketLimit()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    .line 670
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 674
    :cond_7
    iput-boolean v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 675
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 676
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 677
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 656
    iget-wide v8, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    cmp-long v1, v8, v6

    if-ltz v1, :cond_8

    .line 657
    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 660
    :cond_8
    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    .line 662
    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    array-length v1, v1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    .line 663
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v4

    .line 666
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangeTransferLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_9

    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v1

    .line 668
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangePacketLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_a

    .line 670
    :cond_9
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 674
    :cond_a
    iput-boolean v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 675
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 676
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 677
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    .line 679
    throw p1

    .line 656
    :catch_0
    iget-wide v8, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    cmp-long v1, v8, v6

    if-ltz v1, :cond_b

    .line 657
    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingSequence:J

    .line 660
    :cond_b
    iget-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    .line 662
    iget v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    array-length v1, v1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    .line 663
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v4

    .line 666
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangeTransferLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_c

    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    int-to-long v4, v1

    .line 668
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getKeyExchangePacketLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_d

    .line 670
    :cond_c
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    .line 674
    :cond_d
    iput-boolean v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    .line 675
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    .line 676
    iput v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    .line 677
    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->payloadIncoming:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v1, v2

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 641
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    .line 683
    :cond_e
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 685
    iget-boolean p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectPacket:Z

    if-eqz p1, :cond_f

    const-string p1, "is expecting another packet"

    goto :goto_2

    .line 692
    :cond_f
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->expectedBytes:I

    iget v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->offsetIncoming:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "still has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " bytes of data to complete packet with "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " bytes already received requiresWrite="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    .line 684
    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 696
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 697
    const-string v1, "Transport error {} {}"

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 698
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 697
    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :cond_10
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 702
    const-string v1, "Connection Error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 703
    :cond_11
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x2

    .line 704
    const-string v0, "The application encountered an error"

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :cond_12
    move v1, v2

    :cond_13
    :goto_3
    return v1
.end method

.method public processMessage([BJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/nio/WriteOperationRequest;
        }
    .end annotation

    .line 1960
    invoke-virtual {p0, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->resetIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V

    .line 1962
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_13

    .line 1966
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    const/16 v2, 0x20

    invoke-static {p1, v2, v1, v1}, Lcom/sshtools/common/util/Utils;->bytesToHex([BIZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sshtools/common/logger/Log;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 1970
    aget-byte v5, p1, v0

    .line 1972
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1973
    const-string v2, "Processing transport protocol message id {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eq v5, v1, :cond_11

    const/4 v2, 0x2

    if-eq v5, v2, :cond_f

    const/4 v3, 0x3

    if-eq v5, v3, :cond_c

    const/4 v3, 0x4

    if-eq v5, v3, :cond_b

    const/4 v3, 0x7

    if-eq v5, v3, :cond_9

    const/16 v3, 0x14

    if-eq v5, v3, :cond_7

    const/16 v3, 0x15

    if-eq v5, v3, :cond_5

    .line 2081
    invoke-virtual {p0, v5, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processTransportMessage(I[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move-object v3, p0

    goto/16 :goto_1

    .line 2085
    :cond_2
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    if-ne v0, v2, :cond_3

    .line 2086
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {v0, p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->processMessage([B)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2091
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2092
    const-string v0, "Posting mesage id {} to active service for processing"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    :cond_4
    sget-object v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->ACTIVE_SERVICE_IN:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/synergy/ssh/TransportProtocol$5;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    move-object v3, p0

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/sshtools/synergy/ssh/TransportProtocol$5;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/common/ssh/SshConnection;I[BJ)V

    invoke-virtual {p0, v0, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    :cond_5
    move-object v3, p0

    .line 2041
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2042
    const-string p1, "Received SSH_MSG_NEWKEYS"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2044
    :cond_6
    iput-boolean v1, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->hasFirstNewKeys:Z

    .line 2046
    iget-object p1, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    monitor-enter p1

    .line 2047
    :try_start_0
    iget-object p2, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    invoke-interface {p2, v1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->setReceivedNewKeys(Z)V

    .line 2049
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onNewKeysReceived()V

    .line 2050
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_7
    move-object v3, p0

    move-object v6, p1

    .line 2055
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2056
    const-string p1, "Received SSH_MSG_KEX_INIT"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2057
    :cond_8
    invoke-virtual {p0, v6}, Lcom/sshtools/synergy/ssh/TransportProtocol;->performKeyExchange([B)V

    return-void

    :cond_9
    move-object v3, p0

    move-object v6, p1

    .line 2032
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkStrictKex()V

    .line 2034
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2035
    const-string p1, "Received SSH_MSG_EXT_INFO"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2037
    :cond_a
    invoke-direct {p0, v6}, Lcom/sshtools/synergy/ssh/TransportProtocol;->processExtensionInfo([B)V

    return-void

    :cond_b
    move-object v3, p0

    .line 2025
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkStrictKex()V

    .line 2027
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2028
    const-string p1, "Received SSH_MSG_DEBUG"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c
    move-object v3, p0

    move-object v6, p1

    .line 2062
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkStrictKex()V

    .line 2064
    new-instance p1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {p1, v6}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 p2, 0x1

    .line 2066
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 2067
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2068
    const-string p2, "Received SSH_MSG_UNIMPLEMENTED for sequence {}"

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2070
    :cond_d
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2072
    const-string p1, "maverick.failOnUnimplemented"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_1

    .line 2073
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SSH_MSG_UNIMPLEMENTED message returned by remote"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 2070
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2071
    throw p2

    :cond_f
    move-object v3, p0

    .line 2018
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->checkStrictKex()V

    .line 2020
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2021
    const-string p1, "Received SSH_MSG_IGNORE"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_1
    return-void

    :cond_11
    move-object v3, p0

    move-object v6, p1

    .line 1979
    new-instance p1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {p1, v6}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 p2, 0x5

    .line 1981
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 1982
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1983
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1984
    const-string p3, "Recieved SSH_MSG_DISCONNECT {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1987
    :cond_12
    sget-object p3, Lcom/sshtools/synergy/ssh/TransportProtocol;->EVENTS:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    iget-object v1, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    new-instance v2, Lcom/sshtools/synergy/ssh/TransportProtocol$4;

    invoke-direct {v2, p0, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol$4;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p3, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 2010
    iget-object p2, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2012
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_2
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2013
    throw p2

    :cond_13
    move-object v3, p0

    .line 1963
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid transport protocol message"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processNegotiationString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected abstract processTransportMessage(I[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public registerIdleStateListener(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 1

    .line 2869
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->idleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdleStateListener(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 1

    .line 2873
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->idleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 2

    .line 2878
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2879
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Resetting idle state"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2881
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastActivity:J

    .line 2882
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    if-eqz p1, :cond_1

    .line 2884
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SocketConnection;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sshtools/common/nio/IdleStateManager;->reset(Lcom/sshtools/common/nio/IdleStateListener;)V

    :cond_1
    return-void
.end method

.method protected selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2156
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v1, p2

    .line 2159
    :goto_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    .line 2160
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 2161
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2164
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v3, p1

    .line 2166
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v5, :cond_2

    .line 2167
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2168
    invoke-virtual {v0, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 2171
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2174
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    .line 2178
    :cond_3
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v2, Lcom/sshtools/common/events/Event;

    const v4, -0xfffff8

    const/4 v5, 0x1

    invoke-direct {v2, p0, v4, v5}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v4, "CONNECTION"

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 2184
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v4, "LOCAL_COMPONENT_LIST"

    .line 2187
    invoke-virtual {v2, v4, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    const-string v2, "REMOTE_COMPONENT_LIST"

    .line 2190
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 2179
    invoke-interface {v0, v1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 2193
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to negotiate a transport component from %s and %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendKeyExchangeInit()V
    .locals 7

    const/4 v0, 0x2

    .line 2494
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 2496
    :try_start_1
    iput v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingBytesSinceKEX:I

    .line 2497
    iput v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numIncomingPacketsSinceKEX:I

    .line 2498
    iput v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingBytesSinceKEX:I

    .line 2499
    iput v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->numOutgoingPacketsSinceKEX:I

    .line 2501
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->setTransportState(I)V

    .line 2503
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localkex:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 2506
    :try_start_2
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v3

    .line 2507
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isExtensionNegotiationSupported()Z

    move-result v4

    .line 2508
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getExtensionNegotiationString()Ljava/lang/String;

    move-result-object v5

    .line 2509
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isServerMode()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "kex-strict-s-v00@openssh.com"

    goto :goto_0

    :cond_0
    const-string v6, "kex-strict-c-v00@openssh.com"

    .line 2506
    :goto_0
    invoke-static {v3, v4, v5, v6}, Lcom/sshtools/synergy/ssh/TransportProtocolHelper;->generateKexInit(Lcom/sshtools/synergy/ssh/SshContext;ZLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localkex:[B

    .line 2511
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 2512
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2513
    const-string v3, "Posting SSH_MSG_KEX_INIT"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2514
    :cond_1
    new-instance v2, Lcom/sshtools/synergy/ssh/TransportProtocol$7;

    invoke-direct {v2, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol$7;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2527
    :catch_0
    :try_start_3
    const-string v2, "Internal error"

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    .line 2531
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2533
    :catch_1
    const-string v1, "Failed to create SSH_MSG_KEX_INIT"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public sendNewKeys()V
    .locals 2

    .line 2128
    new-instance v0, Lcom/sshtools/synergy/ssh/TransportProtocol$6;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/TransportProtocol$6;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V

    return-void
.end method

.method setTransportState(I)V
    .locals 0

    .line 1638
    iput p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    return-void
.end method

.method protected startBinaryProtocol()Z
    .locals 6

    .line 566
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 568
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/Connection;->getRemotePort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 567
    const-string v1, "Connnection {}:{} identifies itself as {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 572
    invoke-direct {p0, v1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendLocalIdentification(ZLjava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string v2, "SSH-2.0-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SSH-1.99-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 578
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    const-string v0, "Remote client reported an invalid protocol version!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V

    return v1

    .line 584
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 585
    const-string v2, "Remote client version OK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x1

    .line 587
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    .line 589
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v2

    new-instance v3, Lcom/sshtools/common/events/Event;

    const v4, -0xfffff6

    invoke-direct {v3, p0, v4, v1}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v4, "CONNECTION"

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 591
    invoke-virtual {v3, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    const-string v4, "OP_STARTED"

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->started:Ljava/util/Date;

    .line 594
    invoke-virtual {v3, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 597
    const-string v5, "OP_FINISHED"

    invoke-virtual {v3, v5, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 589
    invoke-interface {v2, v3}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 601
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onRemoteIdentificationReceived(Ljava/lang/String;)V

    return v1
.end method

.method protected transferState(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    iput-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    iput-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->remoteIdentification:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    .line 150
    iput-boolean v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentLocalIdentification:Z

    .line 151
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    iput-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sessionIdentifier:[B

    .line 152
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->uuid:Ljava/util/UUID;

    iput-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->uuid:Ljava/util/UUID;

    .line 153
    iget v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    iput v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    .line 154
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastActivity:J

    iput-wide v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->lastActivity:J

    .line 155
    iget-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    iput-object v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    .line 158
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    iput-boolean v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->postedIdentification:Z

    .line 159
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketConnect(Lcom/sshtools/synergy/nio/SocketConnection;)V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    const/4 p1, 0x4

    .line 162
    iput p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    return-void
.end method

.method public wantsToWrite()Z
    .locals 5

    .line 1063
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexlockOut:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->currentState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->completedFirstKeyExchange:Z

    if-eqz v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v4

    :cond_0
    monitor-exit v0

    return v3

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol;->kexQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 1069
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
