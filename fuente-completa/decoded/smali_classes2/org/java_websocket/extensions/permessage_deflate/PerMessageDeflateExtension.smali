.class public Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;
.super Lorg/java_websocket/extensions/CompressionExtension;
.source "PerMessageDeflateExtension.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CLIENT_MAX_WINDOW_BITS:Ljava/lang/String; = "client_max_window_bits"

.field private static final CLIENT_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "client_no_context_takeover"

.field private static final EXTENSION_REGISTERED_NAME:Ljava/lang/String; = "permessage-deflate"

.field private static final SERVER_MAX_WINDOW_BITS:Ljava/lang/String; = "server_max_window_bits"

.field private static final SERVER_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "server_no_context_takeover"

.field private static final TAIL_BYTES:[B

.field private static final clientMaxWindowBits:I = 0x8000

.field private static final serverMaxWindowBits:I = 0x8000


# instance fields
.field private clientNoContextTakeover:Z

.field private final compressionLevel:I

.field private final deflater:Ljava/util/zip/Deflater;

.field private final inflater:Ljava/util/zip/Inflater;

.field private requestedParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverNoContextTakeover:Z

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0, v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/java_websocket/extensions/CompressionExtension;-><init>()V

    const/16 v0, 0x400

    .line 45
    iput v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->threshold:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    .line 74
    iput p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->compressionLevel:I

    .line 75
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    .line 76
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method private decompress([BLjava/io/ByteArrayOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 p1, 0x400

    .line 209
    new-array p1, p1, [B

    .line 212
    :goto_0
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p2, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static endsWithTail([B)Z
    .locals 5

    .line 272
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 276
    :cond_0
    array-length v0, p0

    move v1, v2

    .line 277
    :goto_0
    sget-object v3, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 278
    aget-byte v4, v3, v1

    array-length v3, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v1

    aget-byte v3, p0, v3

    if-eq v4, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public acceptProvidedExtensionAsClient(Ljava/lang/String;)Z
    .locals 6

    .line 310
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 311
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 312
    invoke-static {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lorg/java_websocket/extensions/ExtensionRequestData;

    move-result-object v3

    .line 313
    const-string v4, "permessage-deflate"

    invoke-virtual {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public acceptProvidedExtensionAsServer(Ljava/lang/String;)Z
    .locals 6

    .line 288
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 289
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 290
    invoke-static {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lorg/java_websocket/extensions/ExtensionRequestData;

    move-result-object v3

    .line 291
    const-string v4, "permessage-deflate"

    invoke-virtual {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v3}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    iget-object p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v0, "client_no_context_takeover"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 299
    iput-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public copyInstance()Lorg/java_websocket/extensions/IExtension;
    .locals 2

    .line 344
    new-instance v0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;

    invoke-virtual {p0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->getCompressionLevel()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;-><init>(I)V

    .line 345
    invoke-virtual {p0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->getThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->setThreshold(I)V

    .line 346
    invoke-virtual {p0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->isClientNoContextTakeover()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->setClientNoContextTakeover(Z)V

    .line 347
    invoke-virtual {p0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->isServerNoContextTakeover()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->setServerNoContextTakeover(Z)V

    return-object v0
.end method

.method public decodeFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 153
    instance-of v0, p1, Lorg/java_websocket/framing/DataFrame;

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    const/16 v2, 0x3f0

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    new-instance p1, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v0, "RSV1 bit can only be set for the first frame."

    invoke-direct {p1, v2, v0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 168
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    :try_start_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 180
    iget-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-lez v1, :cond_4

    .line 181
    iget-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 182
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 185
    :cond_4
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    sget-object v1, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    invoke-direct {p0, v1, v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 188
    iget-boolean v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v1, :cond_5

    .line 189
    iget-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_5
    check-cast p1, Lorg/java_websocket/framing/FramedataImpl1;

    .line 198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    return-void

    :catch_0
    move-exception p1

    .line 193
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public encodeFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 6

    .line 220
    instance-of v0, p1, Lorg/java_websocket/framing/DataFrame;

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 225
    array-length v1, v0

    iget v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->threshold:I

    if-ge v1, v2, :cond_1

    :goto_0
    return-void

    .line 229
    :cond_1
    instance-of v1, p1, Lorg/java_websocket/framing/ContinuousFrame;

    if-nez v1, :cond_2

    .line 230
    move-object v1, p1

    check-cast v1, Lorg/java_websocket/framing/DataFrame;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/java_websocket/framing/DataFrame;->setRSV1(Z)V

    .line 233
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 237
    new-array v2, v1, [B

    .line 239
    :goto_1
    iget-object v3, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v1, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v3

    if-lez v3, :cond_3

    .line 241
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 245
    array-length v1, v0

    .line 253
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    invoke-static {v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->endsWithTail([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    sget-object v2, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 258
    :cond_4
    iget-boolean v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    if-eqz v2, :cond_5

    .line 259
    iget-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    .line 264
    :cond_5
    check-cast p1, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-static {v0, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->compressionLevel:I

    return v0
.end method

.method public getProvidedExtensionAsClient()Ljava/lang/String;
    .locals 3

    .line 328
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v1, "client_no_context_takeover"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v1, "server_no_context_takeover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "permessage-deflate; server_no_context_takeover; client_no_context_takeover"

    return-object v0
.end method

.method public getProvidedExtensionAsServer()Ljava/lang/String;
    .locals 2

    .line 339
    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v0, :cond_0

    const-string v0, "; client_no_context_takeover"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "permessage-deflate; server_no_context_takeover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->threshold:I

    return v0
.end method

.method public isClientNoContextTakeover()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    return v0
.end method

.method public isFrameValid(Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 357
    instance-of v0, p1, Lorg/java_websocket/framing/ContinuousFrame;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad rsv RSV1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/java_websocket/extensions/CompressionExtension;->isFrameValid(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public isServerNoContextTakeover()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    return v0
.end method

.method public setClientNoContextTakeover(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    return-void
.end method

.method public setServerNoContextTakeover(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 102
    iput p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->threshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 368
    const-string v0, "PerMessageDeflateExtension"

    return-object v0
.end method
