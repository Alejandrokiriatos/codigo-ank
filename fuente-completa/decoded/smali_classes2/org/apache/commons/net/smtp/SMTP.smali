.class public Lorg/apache/commons/net/smtp/SMTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SMTP.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String;

.field public static final DEFAULT_PORT:I = 0x19


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected final encoding:Ljava/lang/String;

.field private newReplyString:Z

.field reader:Ljava/io/BufferedReader;

.field private replyCode:I

.field private final replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replyString:Ljava/lang/String;

.field writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/smtp/SMTP;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    sget-object v0, Lorg/apache/commons/net/smtp/SMTP;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x19

    .line 107
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->setDefaultPort(I)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->newReplyString:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyString:Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 112
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    return-void
.end method

.method private sendCommand(ILjava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x20

    .line 522
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_1
    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    iget-object p3, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 529
    iget-object p3, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 530
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReply()I

    move-result p1

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

    .line 118
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 119
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_input_:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->reader:Ljava/io/BufferedReader;

    .line 120
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReply()I

    return-void
.end method

.method public data()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->reader:Ljava/io/BufferedReader;

    .line 147
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    .line 148
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyString:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->newReplyString:Z

    return-void
.end method

.method public expn(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 164
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReply()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->newReplyString:Z

    .line 190
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v4, 0x0

    .line 206
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/commons/net/smtp/SMTP;->replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, v3, :cond_2

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/smtp/SMTP;->fireReplyReceived(ILjava/lang/String;)V

    .line 236
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyCode:I

    const/16 v1, 0x1a5

    if-eq v0, v1, :cond_3

    return v0

    .line 237
    :cond_3
    new-instance v0, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v1, "SMTP response 421 received.  Server closed connection."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catch_0
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_4
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Truncated server reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_5
    new-instance v0, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyCode()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 260
    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->newReplyString:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyString:Ljava/lang/String;

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p0, Lorg/apache/commons/net/smtp/SMTP;->newReplyString:Z

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyString:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->replyLines:Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public helo(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public help()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 311
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 325
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mail(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public noop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 352
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 365
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rcpt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public rset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 404
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public saml(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 418
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public send(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 432
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x1

    .line 506
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public soml(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 545
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public turn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 558
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public vrfy(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 572
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
