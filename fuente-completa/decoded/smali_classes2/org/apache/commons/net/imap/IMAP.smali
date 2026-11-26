.class public Lorg/apache/commons/net/imap/IMAP;
.super Lorg/apache/commons/net/SocketClient;
.source "IMAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAP$IMAPState;,
        Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x8f

.field public static final TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field protected static final __DEFAULT_ENCODING:Ljava/lang/String;


# instance fields
.field protected __writer:Ljava/io/BufferedWriter;

.field protected _reader:Ljava/io/BufferedReader;

.field private volatile chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field private final initialID:[C

.field private replyCode:I

.field private final replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/apache/commons/net/imap/IMAP$IMAPState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAP;->__DEFAULT_ENCODING:Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/net/imap/IMAP$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/net/imap/IMAP;->TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x4

    .line 136
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    const/16 v0, 0x8f

    .line 142
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setDefaultPort(I)V

    .line 143
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 145
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->createCommandSupport()V

    return-void

    :array_0
    .array-data 2
        0x41s
        0x41s
        0x41s
        0x41s
    .end array-data
.end method

.method private getReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->getReply(Z)V

    return-void
.end method

.method private getReply(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_7

    .line 263
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_6

    .line 266
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isUntagged(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 267
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->literalCount(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ltz p1, :cond_2

    .line 270
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    goto :goto_1

    .line 272
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v0, :cond_3

    .line 278
    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    if-eqz p1, :cond_3

    .line 280
    invoke-interface {p1, p0}, Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;->chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    .line 283
    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 287
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 291
    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_5
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    goto :goto_2

    .line 296
    :cond_6
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getUntaggedReplyCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    .line 299
    :goto_2
    iget p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    .line 260
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$static$0(Lorg/apache/commons/net/imap/IMAP;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string p0, "\"\""

    return-object p0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\""

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "([\\\\\"])"

    const-string v3, "\\\\$1"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    iget-object p3, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 403
    iget-object p3, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 404
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/imap/IMAP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;->getReply()V

    .line 406
    iget p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    return p1
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 156
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_input_:Ljava/io/InputStream;

    sget-object v3, Lorg/apache/commons/net/imap/IMAP;->__DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 157
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getSoTimeout()I

    move-result v0

    if-gtz v0, :cond_0

    .line 160
    iget v1, p0, Lorg/apache/commons/net/imap/IMAP;->connectTimeout:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    :cond_0
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->getReply(Z)V

    if-gtz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    .line 166
    :cond_1
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 179
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result p1

    return p1
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result p1

    return p1
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    return-void
.end method

.method protected generateCommandID()Ljava/lang/String;
    .locals 6

    .line 226
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 229
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-eqz v2, :cond_1

    if-ltz v1, :cond_1

    .line 230
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    aget-char v4, v3, v1

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    const/16 v4, 0x41

    .line 231
    aput-char v4, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    int-to-char v2, v4

    .line 233
    aput-char v2, v3, v1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->generateCommandID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendData(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setChunkListener(Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    return-void
.end method

.method protected setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-void
.end method
