.class public Lorg/apache/commons/net/pop3/POP3;
.super Lorg/apache/commons/net/SocketClient;
.source "POP3.java"


# static fields
.field public static final AUTHORIZATION_STATE:I = 0x0

.field static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final DEFAULT_PORT:I = 0x6e

.field public static final DISCONNECTED_STATE:I = -0x1

.field static final ERROR:Ljava/lang/String; = "-ERR"

.field static final OK:Ljava/lang/String; = "+OK"

.field static final OK_INT:Ljava/lang/String; = "+ "

.field public static final TRANSACTION_STATE:I = 0x1

.field public static final UPDATE_STATE:I = 0x2


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field lastReplyLine:Ljava/lang/String;

.field private popState:I

.field reader:Ljava/io/BufferedReader;

.field replyCode:I

.field replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/net/pop3/POP3;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x6e

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setDefaultPort(I)V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lorg/apache/commons/net/pop3/POP3;->popState:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    .line 95
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    .line 97
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method private getReply()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 164
    const-string v1, "+OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    goto :goto_0

    .line 166
    :cond_0
    const-string v1, "-ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 167
    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 169
    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    .line 174
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->lastReplyLine:Ljava/lang/String;

    .line 177
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/pop3/POP3;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    .line 171
    :cond_2
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received invalid POP3 protocol response from server."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 106
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_input_:Ljava/io/InputStream;

    sget-object v3, Lorg/apache/commons/net/pop3/POP3;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    .line 107
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->getReply()V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    .line 122
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    .line 123
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->lastReplyLine:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    return-void
.end method

.method public getAdditionalReply()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 217
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->popState:I

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 263
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->getReply()V

    .line 289
    iget p1, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    return p1

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Socket is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setState(I)V
    .locals 0

    .line 298
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3;->popState:I

    return-void
.end method
