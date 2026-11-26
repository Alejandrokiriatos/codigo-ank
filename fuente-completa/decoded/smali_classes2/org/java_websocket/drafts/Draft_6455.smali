.class public Lorg/java_websocket/drafts/Draft_6455;
.super Lorg/java_websocket/drafts/Draft;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final SEC_WEB_SOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field private static final SEC_WEB_SOCKET_EXTENSIONS:Ljava/lang/String; = "Sec-WebSocket-Extensions"

.field private static final SEC_WEB_SOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field private static final SEC_WEB_SOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field private static final UPGRADE:Ljava/lang/String; = "Upgrade"


# instance fields
.field private final byteBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

.field private currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

.field private defaultExtension:Lorg/java_websocket/extensions/IExtension;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private knownExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation
.end field

.field private knownProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;

.field private maxFrameSize:I

.field private negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

.field private protocol:Lorg/java_websocket/protocols/IProtocol;

.field private final reuseableRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/java_websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;I)V"
        }
    .end annotation

    .line 223
    new-instance v0, Lorg/java_websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 210
    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;I)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft;-><init>()V

    .line 113
    const-class v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    .line 118
    new-instance v0, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-direct {v0}, Lorg/java_websocket/extensions/DefaultExtension;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    .line 123
    new-instance v0, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-direct {v0}, Lorg/java_websocket/extensions/DefaultExtension;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->defaultExtension:Lorg/java_websocket/extensions/IExtension;

    .line 163
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/extensions/IExtension;

    .line 247
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v2, :cond_2

    .line 254
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 256
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    iput p3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    return-void

    .line 240
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/java_websocket/extensions/IExtension;)V
    .locals 0

    .line 188
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private addToBufferList(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkBufferLimit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 1102
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getByteBufferListSize()J

    move-result-wide v0

    .line 1103
    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    .line 1104
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->clearBufferList()V

    .line 1105
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    iget v3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Payload limit reached. Allowed: {} Current: {}"

    invoke-interface {v2, v1, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1106
    new-instance v0, Lorg/java_websocket/exceptions/LimitExceededException;

    iget v1, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(I)V

    throw v0
.end method

.method private clearBufferList()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1080
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1081
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/protocols/IProtocol;

    .line 296
    invoke-interface {v1, p1}, Lorg/java_websocket/protocols/IProtocol;->acceptProvidedProtocol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    .line 298
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v0, "acceptHandshake - Matching protocol found: {}"

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 302
    :cond_1
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1
.end method

.method private createByteBufferFromFramedata(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 10

    .line 479
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->role:Lorg/java_websocket/enums/Role;

    sget-object v2, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 481
    :goto_0
    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->getSizeBytes(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-le v2, v4, :cond_1

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v5, v4

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    add-int/2addr v5, v7

    .line 483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    .line 482
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 484
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/java_websocket/drafts/Draft_6455;->fromOpcode(Lorg/java_websocket/enums/Opcode;)B

    move-result v7

    .line 485
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, -0x80

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 487
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 488
    invoke-direct {p0, v4}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 490
    :cond_4
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_5

    .line 491
    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 493
    :cond_5
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    .line 494
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result p1

    or-int/2addr p1, v7

    int-to-byte v7, p1

    .line 496
    :cond_6
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long v7, p1

    invoke-direct {p0, v7, v8, v2}, Lorg/java_websocket/drafts/Draft_6455;->toByteArray(JI)[B

    move-result-object p1

    if-ne v2, v4, :cond_7

    .line 501
    aget-byte p1, p1, v3

    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v2

    or-int/2addr p1, v2

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_7
    if-ne v2, v9, :cond_8

    .line 503
    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v2

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    if-ne v2, v7, :cond_b

    .line 506
    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v2

    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_4
    if-eqz v1, :cond_9

    .line 512
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 513
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 514
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 516
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v2, v3, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v4

    goto :goto_5

    .line 519
    :cond_9
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 524
    :cond_a
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v5

    .line 509
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Size representation not supported/specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fromOpcode(Lorg/java_websocket/enums/Opcode;)B
    .locals 3

    .line 855
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 857
    :cond_0
    sget-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 859
    :cond_1
    sget-object v0, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 861
    :cond_2
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    return p1

    .line 863
    :cond_3
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x9

    return p1

    .line 865
    :cond_4
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_5

    const/16 p1, 0xa

    return p1

    .line 868
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/java_websocket/enums/Opcode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 837
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 839
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getByteBufferListSize()J
    .locals 6

    .line 1187
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1188
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 1191
    :cond_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMaskByte(Z)B
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, -0x80

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1168
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 1170
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    long-to-int v1, v2

    .line 1171
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1172
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1173
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1175
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception v1

    .line 1175
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getRSVByte(I)B
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x10

    return p1

    :cond_1
    const/16 p1, 0x20

    return p1

    :cond_2
    const/16 p1, 0x40

    return p1
.end method

.method private getServerTime()Ljava/lang/String;
    .locals 4

    .line 819
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 820
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 822
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 823
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSizeBytes(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 715
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 717
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method

.method private logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V
    .locals 2

    .line 972
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Runtime exception during onWebsocketMessage"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private processFrameBinary(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 1

    .line 958
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    .line 959
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 961
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method private processFrameClosing(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 4

    .line 1057
    instance-of v0, p2, Lorg/java_websocket/framing/CloseFrame;

    if-eqz v0, :cond_0

    .line 1058
    check-cast p2, Lorg/java_websocket/framing/CloseFrame;

    .line 1059
    invoke-virtual {p2}, Lorg/java_websocket/framing/CloseFrame;->getCloseCode()I

    move-result v0

    .line 1060
    invoke-virtual {p2}, Lorg/java_websocket/framing/CloseFrame;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ed

    .line 1057
    const-string p2, ""

    .line 1062
    :goto_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1064
    invoke-virtual {p1, v0, p2, v3}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    if-ne v1, v2, :cond_2

    .line 1068
    invoke-virtual {p1, v0, p2, v3}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p1, v0, p2, v1}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return-void
.end method

.method private processFrameContinuousAndNonFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/enums/Opcode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 930
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-eq p3, v0, :cond_0

    .line 931
    invoke-direct {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameIsNotFin(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameIsFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 934
    :cond_1
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz p1, :cond_5

    .line 940
    :goto_0
    sget-object p1, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p3, p1, :cond_3

    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 941
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Protocol error: Payload is not UTF8"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 942
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw p1

    .line 945
    :cond_3
    :goto_1
    sget-object p1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne p3, p1, :cond_4

    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz p1, :cond_4

    .line 946
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    :cond_4
    return-void

    .line 935
    :cond_5
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Protocol error: Continuous frame sequence was not started."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 936
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 p2, 0x3ea

    const-string p3, "Continuous frame sequence was not started."

    invoke-direct {p1, p2, p3}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private processFrameIsFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz v0, :cond_2

    .line 1006
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 1007
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 1008
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object p2

    sget-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p2, v0, :cond_0

    .line 1009
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast p2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 1010
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast p2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-virtual {p2}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    .line 1012
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object p2

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1013
    invoke-interface {v0}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-interface {p2, p1, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1015
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object p2

    sget-object v0, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne p2, v0, :cond_1

    .line 1018
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast p2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 1019
    iget-object p2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast p2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-virtual {p2}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    .line 1021
    :try_start_1
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object p2

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1022
    invoke-interface {v0}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1024
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1027
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1028
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->clearBufferList()V

    return-void

    .line 1002
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Protocol error: Previous continuous frame sequence not completed."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1003
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 p2, 0x3ea

    const-string v0, "Continuous frame sequence was not started."

    invoke-direct {p1, p2, v0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private processFrameIsNotFin(Lorg/java_websocket/framing/Framedata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-nez v0, :cond_0

    .line 1043
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1044
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 1045
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    return-void

    .line 1039
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v0, "Protocol error: Previous continuous frame sequence not completed."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1040
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v0, 0x3ea

    const-string v1, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private processFrameText(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 985
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    .line 986
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 988
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method private toByteArray(JI)[B
    .locals 5

    .line 845
    new-array v0, p3, [B

    mul-int/lit8 v1, p3, 0x8

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 848
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toOpcode(B)Lorg/java_websocket/enums/Opcode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 888
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown opcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :pswitch_0
    sget-object p1, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    return-object p1

    .line 883
    :pswitch_1
    sget-object p1, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    return-object p1

    .line 881
    :pswitch_2
    sget-object p1, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    return-object p1

    .line 878
    :cond_0
    sget-object p1, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    return-object p1

    .line 876
    :cond_1
    sget-object p1, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    return-object p1

    .line 874
    :cond_2
    sget-object p1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/IncompleteException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 533
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x2

    .line 535
    invoke-direct {p0, v4, v5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v6

    .line 541
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v3, v1, -0x80

    if-eqz v3, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move v11, v6

    :goto_4
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v3, v1

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 544
    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->toOpcode(B)Lorg/java_websocket/enums/Opcode;

    move-result-object v2

    if-ltz v3, :cond_6

    const/16 v0, 0x7d

    if-le v3, v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, p0

    move-object v1, p1

    goto :goto_6

    :cond_6
    :goto_5
    move-object v0, p0

    move-object v1, p1

    .line 547
    invoke-direct/range {v0 .. v5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Opcode;III)Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    move-result-object p1

    .line 549
    invoke-static {p1}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$000(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v3

    .line 550
    invoke-static {p1}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$100(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v5

    :goto_6
    int-to-long v12, v3

    .line 552
    invoke-direct {p0, v12, v13}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    const/4 p1, 0x4

    if-eqz v11, :cond_7

    move v12, p1

    goto :goto_7

    :cond_7
    move v12, v6

    :goto_7
    add-int/2addr v5, v12

    add-int/2addr v5, v3

    .line 555
    invoke-direct {p0, v4, v5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 557
    invoke-virtual {p0, v3}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v11, :cond_8

    .line 559
    new-array p1, p1, [B

    .line 560
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_8
    if-ge v6, v3, :cond_9

    .line 562
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    rem-int/lit8 v11, v6, 0x4

    aget-byte v11, p1, v11

    xor-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 565
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, p1, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 566
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 569
    :cond_9
    invoke-static {v2}, Lorg/java_websocket/framing/FramedataImpl1;->get(Lorg/java_websocket/enums/Opcode;)Lorg/java_websocket/framing/FramedataImpl1;

    move-result-object p1

    .line 570
    invoke-virtual {p1, v7}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 571
    invoke-virtual {p1, v8}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV1(Z)V

    .line 572
    invoke-virtual {p1, v9}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV2(Z)V

    .line 573
    invoke-virtual {p1, v10}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV3(Z)V

    .line 574
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 575
    invoke-virtual {p1, v4}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 576
    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-eq v1, v2, :cond_c

    .line 578
    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV1()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV2()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV3()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_9

    .line 582
    :cond_a
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->defaultExtension:Lorg/java_websocket/extensions/IExtension;

    iput-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    goto :goto_a

    .line 579
    :cond_b
    :goto_9
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v1

    iput-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    .line 585
    :cond_c
    :goto_a
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    if-nez v1, :cond_d

    .line 586
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->defaultExtension:Lorg/java_websocket/extensions/IExtension;

    iput-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    .line 588
    :cond_d
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v1, p1}, Lorg/java_websocket/extensions/IExtension;->isFrameValid(Lorg/java_websocket/framing/Framedata;)V

    .line 589
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->currentDecodingExtension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v1, p1}, Lorg/java_websocket/extensions/IExtension;->decodeFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 590
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 591
    iget-object v1, v0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 592
    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_e

    const-string v3, "too big to display"

    goto :goto_b

    .line 593
    :cond_e
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 591
    :goto_b
    const-string v4, "afterDecoding({}): {}"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    :cond_f
    invoke-virtual {p1}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    return-object p1

    :cond_10
    move-object v0, p0

    .line 531
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private translateSingleFrameCheckLengthLimit(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 653
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Limit underflow: Payloadsize is to little..."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 659
    new-instance p1, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string p2, "Payloadsize is to little..."

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_1
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Payload limit reached. Allowed: {} Current: {}"

    invoke-interface {v1, p2, v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    new-instance p1, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string p2, "Payload limit reached."

    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {p1, p2, v0}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 650
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Limit exedeed: Payloadsize is to big..."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 651
    new-instance p1, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string p2, "Payloadsize is to big..."

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private translateSingleFrameCheckPacketSize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/IncompleteException;
        }
    .end annotation

    if-lt p1, p2, :cond_0

    return-void

    .line 673
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v0, "Incomplete frame: maxpacketsize < realpacketsize"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 674
    new-instance p1, Lorg/java_websocket/exceptions/IncompleteException;

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/IncompleteException;-><init>(I)V

    throw p1
.end method

.method private translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Opcode;III)Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;,
            Lorg/java_websocket/exceptions/IncompleteException;,
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 617
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-eq p2, v0, :cond_2

    const/16 p2, 0x7e

    if-ne p3, p2, :cond_0

    const/4 p2, 0x2

    add-int/2addr p5, p2

    .line 623
    invoke-direct {p0, p4, p5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    const/4 p3, 0x3

    .line 624
    new-array p3, p3, [B

    .line 625
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    const/4 v0, 0x1

    aput-byte p4, p3, v0

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    aput-byte p1, p3, p2

    .line 627
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    goto :goto_1

    :cond_0
    const/16 p2, 0x8

    add-int/2addr p5, p2

    .line 630
    invoke-direct {p0, p4, p5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 631
    new-array p3, p2, [B

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 633
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    aput-byte v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 635
    :cond_1
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    .line 636
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    long-to-int p1, p1

    .line 639
    :goto_1
    new-instance p2, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    invoke-direct {p2, p0, p1, p5}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;-><init>(Lorg/java_websocket/drafts/Draft_6455;II)V

    return-object p2

    .line 618
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Invalid frame: more than 125 octets"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 619
    new-instance p1, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string p2, "more than 125 octets"

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "acceptHandshakeAsClient - Missing/wrong upgrade or connection in handshake."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 310
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 312
    :cond_0
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lorg/java_websocket/handshake/ServerHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    invoke-interface {p2, v1}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 323
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "acceptHandshakeAsClient - Wrong key for Sec-WebSocket-Key."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 324
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 326
    :cond_2
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 327
    const-string v0, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v0}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/extensions/IExtension;

    .line 329
    invoke-interface {v2, v0}, Lorg/java_websocket/extensions/IExtension;->acceptProvidedExtensionAsClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    .line 331
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 332
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "acceptHandshakeAsClient - Matching extension found: {}"

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :cond_4
    const-string v0, "Sec-WebSocket-Protocol"

    .line 337
    invoke-interface {p2, v0}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-direct {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object p2

    .line 338
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne p2, v0, :cond_5

    sget-object p2, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne p1, p2, :cond_5

    .line 339
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 341
    :cond_5
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "acceptHandshakeAsClient - No matching extension or protocol found."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 342
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 314
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "acceptHandshakeAsClient - Missing Sec-WebSocket-Key or Sec-WebSocket-Accept"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 315
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1
.end method

.method public acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->readVersion(Lorg/java_websocket/handshake/Handshakedata;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 266
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v0, "acceptHandshakeAsServer - Wrong websocket version."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 267
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 269
    :cond_0
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 270
    const-string v1, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/extensions/IExtension;

    .line 272
    invoke-interface {v3, v1}, Lorg/java_websocket/extensions/IExtension;->acceptProvidedExtensionAsServer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    iput-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    .line 274
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 275
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "acceptHandshakeAsServer - Matching extension found: {}"

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    :cond_2
    const-string v1, "Sec-WebSocket-Protocol"

    .line 280
    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object p1

    .line 281
    sget-object v1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne p1, v1, :cond_3

    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v0, p1, :cond_3

    .line 282
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1

    .line 284
    :cond_3
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v0, "acceptHandshakeAsServer - No matching extension or protocol found."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 285
    sget-object p1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    return-object p1
.end method

.method public copyInstance()Lorg/java_websocket/drafts/Draft;
    .locals 4

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getKnownExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/extensions/IExtension;

    .line 458
    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->copyInstance()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getKnownProtocols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/protocols/IProtocol;

    .line 462
    invoke-interface {v3}, Lorg/java_websocket/protocols/IProtocol;->copyInstance()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_1
    new-instance v2, Lorg/java_websocket/drafts/Draft_6455;

    iget v3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v2, v0, v1, v3}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v2
.end method

.method public createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 469
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/java_websocket/extensions/IExtension;->encodeFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 470
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 472
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    const-string v2, "too big to display"

    goto :goto_0

    .line 473
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 471
    :goto_0
    const-string v3, "afterEnconding({}): {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    :cond_1
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->createByteBufferFromFramedata(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 792
    new-instance v0, Lorg/java_websocket/framing/TextFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/TextFrame;-><init>()V

    .line 793
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/java_websocket/framing/TextFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 794
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/TextFrame;->setTransferemasked(Z)V

    .line 796
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/framing/TextFrame;->isValid()V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 798
    new-instance p2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {p2, p1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 779
    new-instance v0, Lorg/java_websocket/framing/BinaryFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/BinaryFrame;-><init>()V

    .line 780
    invoke-virtual {v0, p1}, Lorg/java_websocket/framing/BinaryFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 781
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/BinaryFrame;->setTransferemasked(Z)V

    .line 783
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/framing/BinaryFrame;->isValid()V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 785
    new-instance p2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {p2, p1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1137
    :cond_1
    check-cast p1, Lorg/java_websocket/drafts/Draft_6455;

    .line 1139
    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {p1}, Lorg/java_websocket/drafts/Draft_6455;->getMaxFrameSize()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1142
    :cond_2
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 1145
    :cond_4
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    invoke-virtual {p1}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;
    .locals 1

    .line 1112
    sget-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    return-object v0
.end method

.method public getExtension()Lorg/java_websocket/extensions/IExtension;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    return-object v0
.end method

.method public getKnownExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getKnownProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getMaxFrameSize()I
    .locals 1

    .line 381
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    return v0
.end method

.method public getProtocol()Lorg/java_websocket/protocols/IProtocol;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1150
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1151
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1152
    iget v1, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 5

    .line 397
    const-string v0, "websocket"

    const-string v1, "Upgrade"

    invoke-interface {p1, v1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "Connection"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 399
    new-array v0, v0, [B

    .line 400
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 401
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/extensions/IExtension;

    .line 405
    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 406
    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_1
    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    const-string v1, "Sec-WebSocket-Extensions"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/protocols/IProtocol;

    .line 418
    invoke-interface {v2}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 420
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_5
    invoke-interface {v2}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 425
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 434
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-interface {p2, v0, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 438
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    const-string v0, "Sec-WebSocket-Accept"

    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object p1

    invoke-interface {p1}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object p1

    invoke-interface {p1}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v0, p1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object p1

    invoke-interface {p1}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 446
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object p1

    invoke-interface {p1}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0, p1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1
    const-string p1, "Web Socket Protocol Handshake"

    invoke-interface {p2, p1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 449
    const-string p1, "Server"

    const-string v0, "TooTallNate Java-WebSocket"

    invoke-interface {p2, p1, v0}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string p1, "Date"

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 439
    :cond_2
    new-instance p1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string p2, "missing Sec-WebSocket-Key"

    invoke-direct {p1, p2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processFrame(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 895
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v0

    .line 896
    sget-object v1, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_0

    .line 897
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameClosing(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    return-void

    .line 898
    :cond_0
    sget-object v1, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_1

    .line 899
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketPing(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    return-void

    .line 900
    :cond_1
    sget-object v1, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_2

    .line 901
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->updateLastPong()V

    .line 902
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    return-void

    .line 903
    :cond_2
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 905
    :cond_3
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    const/16 v2, 0x3ea

    if-nez v1, :cond_6

    .line 909
    sget-object v1, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_4

    .line 910
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameText(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    return-void

    .line 911
    :cond_4
    sget-object v1, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_5

    .line 912
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameBinary(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    return-void

    .line 914
    :cond_5
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "non control or continious frame expected"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 915
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    invoke-direct {p1, v2, p2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 906
    :cond_6
    iget-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string p2, "Protocol error: Continuous frame sequence not completed."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 907
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string p2, "Continuous frame sequence not completed."

    invoke-direct {p1, v2, p2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 904
    :cond_7
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/drafts/Draft_6455;->processFrameContinuousAndNonFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/enums/Opcode;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 806
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    if-eqz v1, :cond_0

    .line 807
    invoke-interface {v1}, Lorg/java_websocket/extensions/IExtension;->reset()V

    .line 809
    :cond_0
    new-instance v1, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-direct {v1}, Lorg/java_websocket/extensions/DefaultExtension;-><init>()V

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->negotiatedExtension:Lorg/java_websocket/extensions/IExtension;

    .line 810
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1117
    invoke-super {p0}, Lorg/java_websocket/drafts/Draft;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v1

    invoke-interface {v1}, Lorg/java_websocket/extensions/IExtension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v1

    invoke-interface {v1}, Lorg/java_websocket/protocols/IProtocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max frame size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 726
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 728
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 731
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 732
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 733
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 734
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 738
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 739
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 742
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 743
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 744
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 745
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 746
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/java_websocket/exceptions/IncompleteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Lorg/java_websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 752
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 753
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 759
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 762
    :try_start_1
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 763
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/java_websocket/exceptions/IncompleteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 766
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 767
    invoke-virtual {v1}, Lorg/java_websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v1

    .line 768
    invoke-virtual {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 769
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v0
.end method
