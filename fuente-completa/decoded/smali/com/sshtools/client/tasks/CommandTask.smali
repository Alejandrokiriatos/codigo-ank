.class public final Lcom/sshtools/client/tasks/CommandTask;
.super Lcom/sshtools/client/tasks/AbstractSessionTask;
.source "CommandTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;,
        Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractSessionTask<",
        "Lcom/sshtools/client/SessionChannelNG;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoConsume:Z

.field private final charset:Ljava/lang/String;

.field private final cols:I

.field private final command:Ljava/lang/String;

.field private final modes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/synergy/ssh/TerminalModes;",
            ">;"
        }
    .end annotation
.end field

.field private final onBeforeExecute:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onBeforeTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:I

.field private final termType:Ljava/lang/String;

.field private final withPty:Z


# direct methods
.method public static synthetic $r8$lambda$rYlvyEONlOISwYoBIVxbwcQYc0E(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)V
    .locals 2

    .line 300
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)V

    .line 301
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetcommand(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->command:Ljava/lang/String;

    .line 302
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetencoding(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->charset:Ljava/lang/String;

    .line 303
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetautoConsume(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/CommandTask;->autoConsume:Z

    .line 304
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetonClose(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onClose:Ljava/util/Optional;

    .line 305
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetonBeforeExecute(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onBeforeExecute:Ljava/util/Optional;

    .line 306
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetonTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onTask:Ljava/util/Optional;

    .line 307
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetonBeforeTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onBeforeTask:Ljava/util/Optional;

    .line 308
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetwithPty(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/CommandTask;->withPty:Z

    .line 309
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgettermType(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "dumb"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->termType:Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetrows(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/CommandTask;->rows:I

    .line 311
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetcols(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/CommandTask;->cols:I

    .line 312
    invoke-static {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->-$$Nest$fgetmodes(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask;->modes:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;Lcom/sshtools/client/tasks/CommandTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/CommandTask;-><init>(Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/AbstractSessionChannel;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask;->createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    return-object p1
.end method

.method protected createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/SessionChannelNG;
    .locals 7

    .line 340
    new-instance v0, Lcom/sshtools/client/SessionChannelNG;

    .line 341
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v1

    const-class v2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v1

    .line 342
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    const-class v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 343
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    .line 344
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p1

    const-class v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p1, v4}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 345
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/CommandTask;->getChannelFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sshtools/client/tasks/CommandTask;->autoConsume:Z

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/client/SessionChannelNG;-><init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getExitCode()I
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/CommandTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getExitCode()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onCloseSession$1$com-sshtools-client-tasks-CommandTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)V
    .locals 1

    .line 319
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;->commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 325
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 323
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 321
    throw p1
.end method

.method synthetic lambda$onOpenSession$2$com-sshtools-client-tasks-CommandTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)V
    .locals 1

    .line 353
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;->commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 357
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 355
    throw p1
.end method

.method synthetic lambda$onOpenSession$3$com-sshtools-client-tasks-CommandTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)V
    .locals 1

    .line 364
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;->commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/CommandTask;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 370
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 368
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 366
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_0
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/CommandTask;->close()V

    .line 373
    throw p1
.end method

.method synthetic lambda$setupSession$4$com-sshtools-client-tasks-CommandTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)V
    .locals 1

    .line 390
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;->commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 396
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 394
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 392
    throw p1
.end method

.method protected bridge synthetic onCloseSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask;->onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onClose:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;-><init>(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic onOpenSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask;->onOpenSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final onOpenSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onBeforeTask:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda3;-><init>(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 362
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->onTask:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda4;-><init>(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic setupSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/CommandTask;->setupSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final setupSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 7

    .line 381
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/client/tasks/CommandTask;->withPty:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->modes:Ljava/util/Optional;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->termType:Ljava/lang/String;

    iget v1, p0, Lcom/sshtools/client/tasks/CommandTask;->cols:I

    iget v2, p0, Lcom/sshtools/client/tasks/CommandTask;->rows:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sshtools/client/SessionChannelNG;->allocatePseudoTerminal(Ljava/lang/String;II)Lcom/sshtools/common/ssh/RequestFuture;

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/tasks/CommandTask;->termType:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/client/tasks/CommandTask;->cols:I

    iget v3, p0, Lcom/sshtools/client/tasks/CommandTask;->rows:I

    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask;->modes:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sshtools/synergy/ssh/TerminalModes;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/SessionChannelNG;->allocatePseudoTerminal(Ljava/lang/String;IIIILcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/common/ssh/RequestFuture;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    .line 388
    :goto_1
    iget-object p1, p0, Lcom/sshtools/client/tasks/CommandTask;->onBeforeExecute:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda5;-><init>(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    iget-object p1, p0, Lcom/sshtools/client/tasks/CommandTask;->command:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/client/tasks/CommandTask;->charset:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/client/SessionChannelNG;->executeCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 401
    throw p1
.end method
