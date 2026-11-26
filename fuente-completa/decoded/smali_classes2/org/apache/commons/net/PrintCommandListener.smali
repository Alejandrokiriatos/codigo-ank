.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "PrintCommandListener.java"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# static fields
.field private static final CMD_LOGIN:Ljava/lang/String; = "LOGIN"

.field private static final CMD_PASS:Ljava/lang/String; = "PASS"

.field private static final CMD_USER:Ljava/lang/String; = "USER"

.field private static final DIRECTION_MARKER_RECEIVE:Ljava/lang/String; = "< "

.field private static final DIRECTION_MARKER_SEND:Ljava/lang/String; = "> "

.field private static final HIDDEN_MARKER:Ljava/lang/String; = " *******"


# instance fields
.field private final eolMarker:C

.field private final noLogin:Z

.field private final showDirection:Z

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 0

    .line 66
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 0

    .line 79
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 0

    .line 93
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "writer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 139
    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->noLogin:Z

    .line 140
    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    .line 141
    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    return-void
.end method

.method private getCommand(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 153
    iget-char v0, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 3

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->noLogin:Z

    if-eqz v0, :cond_4

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getCommand(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " *******"

    if-nez v1, :cond_3

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    const-string v1, "LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0xd

    if-eq v0, p1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    .line 200
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 202
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
