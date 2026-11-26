.class public final Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
.source "CommandTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/CommandTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
        "Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;",
        "Lcom/sshtools/client/SessionChannelNG;",
        "Lcom/sshtools/client/tasks/CommandTask;",
        ">;"
    }
.end annotation


# instance fields
.field private autoConsume:Z

.field private cols:I

.field private command:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private modes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/synergy/ssh/TerminalModes;",
            ">;"
        }
    .end annotation
.end field

.field private onBeforeExecute:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onBeforeTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private rows:I

.field private termType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private withPty:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetautoConsume(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->autoConsume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcols(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->cols:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommand(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->command:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetencoding(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodes(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->modes:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonBeforeExecute(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeExecute:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonBeforeTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonClose(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onTask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrows(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->rows:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettermType(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->termType:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwithPty(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withPty:Z

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onClose:Ljava/util/Optional;

    .line 62
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeExecute:Ljava/util/Optional;

    .line 63
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    .line 64
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onTask:Ljava/util/Optional;

    .line 65
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->encoding:Ljava/util/Optional;

    .line 66
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->command:Ljava/util/Optional;

    .line 67
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->termType:Ljava/util/Optional;

    const/16 v0, 0x50

    .line 68
    iput v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->cols:I

    const/16 v0, 0x18

    .line 69
    iput v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->rows:I

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withPty:Z

    .line 71
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->modes:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 1

    .line 225
    new-instance v0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->build()Lcom/sshtools/client/tasks/CommandTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/CommandTask;
    .locals 2

    .line 282
    new-instance v0, Lcom/sshtools/client/tasks/CommandTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/CommandTask;-><init>(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;Lcom/sshtools/client/tasks/CommandTask-IA;)V

    return-object v0
.end method

.method public final onBeforeExecute(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 235
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeExecute:Ljava/util/Optional;

    return-object p0
.end method

.method public final onBeforeTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 261
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeTask:Ljava/util/Optional;

    return-object p0
.end method

.method public final onClose(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 249
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method public final onTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 276
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onTask:Ljava/util/Optional;

    return-object p0
.end method

.method public withAutoConsume()Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withAutoConsume(Z)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withAutoConsume(Z)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->autoConsume:Z

    return-object p0
.end method

.method public final withColumns(I)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 130
    iput p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->cols:I

    return-object p0
.end method

.method public withCommand(Ljava/lang/String;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 190
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->command:Ljava/util/Optional;

    return-object p0
.end method

.method public withEncoding(Ljava/lang/String;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0

    .line 205
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 215
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method public final withModes(Lcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 154
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->modes:Ljava/util/Optional;

    return-object p0
.end method

.method public withPty(Z)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withPty:Z

    return-object p0
.end method

.method public final withRows(I)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 142
    iput p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->rows:I

    return-object p0
.end method

.method public final withTermType(Ljava/lang/String;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0

    .line 107
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withTermType(Ljava/util/Optional;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final withTermType(Ljava/util/Optional;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->termType:Ljava/util/Optional;

    return-object p0
.end method

.method public withoutPty()Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withPty:Z

    return-object p0
.end method
