.class public Lcom/sshtools/client/tasks/ShellTask;
.super Lcom/sshtools/client/tasks/AbstractShellTask;
.source "ShellTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;,
        Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractShellTask<",
        "Lcom/sshtools/client/SessionChannelNG;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoConsume:Z

.field private final cols:I

.field private final modes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/synergy/ssh/TerminalModes;",
            ">;"
        }
    .end annotation
.end field

.field private final onBeforeTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onStartShell:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onTask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:I

.field private final termType:Ljava/lang/String;

.field private final withPty:Z


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)V
    .locals 2

    .line 273
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractShellTask;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)V

    .line 274
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetonClose(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onClose:Ljava/util/Optional;

    .line 275
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetonBeforeOpen(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onStartShell:Ljava/util/Optional;

    .line 276
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetonBeforeTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onBeforeTask:Ljava/util/Optional;

    .line 277
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetonTask(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onTask:Ljava/util/Optional;

    .line 278
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetwithPty(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/ShellTask;->withPty:Z

    .line 279
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgettermType(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "dumb"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->termType:Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetrows(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/ShellTask;->rows:I

    .line 281
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetcols(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/ShellTask;->cols:I

    .line 282
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetmodes(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->modes:Ljava/util/Optional;

    .line 283
    invoke-static {p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;->-$$Nest$fgetautoConsume(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sshtools/client/tasks/ShellTask;->autoConsume:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;Lcom/sshtools/client/tasks/ShellTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/ShellTask;-><init>(Lcom/sshtools/client/tasks/ShellTask$ShellTaskBuilder;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic beforeStartShell(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/ShellTask;->beforeStartShell(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final beforeStartShell(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 7

    .line 317
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/client/tasks/ShellTask;->withPty:Z

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->modes:Ljava/util/Optional;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->termType:Ljava/lang/String;

    iget v1, p0, Lcom/sshtools/client/tasks/ShellTask;->cols:I

    iget v2, p0, Lcom/sshtools/client/tasks/ShellTask;->rows:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sshtools/client/SessionChannelNG;->allocatePseudoTerminal(Ljava/lang/String;II)Lcom/sshtools/common/ssh/RequestFuture;

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/tasks/ShellTask;->termType:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/client/tasks/ShellTask;->cols:I

    iget v3, p0, Lcom/sshtools/client/tasks/ShellTask;->rows:I

    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->modes:Ljava/util/Optional;

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

    .line 324
    :goto_1
    iget-object p1, p0, Lcom/sshtools/client/tasks/ShellTask;->onStartShell:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 325
    iget-object p1, p0, Lcom/sshtools/client/tasks/ShellTask;->onStartShell:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;

    invoke-interface {p1, p0, v0}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;->shellEvent(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 329
    throw p1
.end method

.method protected bridge synthetic createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/AbstractSessionChannel;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/ShellTask;->createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    return-object p1
.end method

.method protected final createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/SessionChannelNG;
    .locals 7

    .line 350
    new-instance v0, Lcom/sshtools/client/SessionChannelNG;

    .line 351
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v1

    const-class v2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v1

    .line 352
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    const-class v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 353
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    .line 354
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p1

    const-class v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p1, v4}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 355
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/ShellTask;->getChannelFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sshtools/client/tasks/ShellTask;->autoConsume:Z

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/client/SessionChannelNG;-><init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-object v0
.end method

.method synthetic lambda$onOpenSession$0$com-sshtools-client-tasks-ShellTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)V
    .locals 1

    .line 290
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;->shellEvent(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 296
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 294
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 292
    throw p1
.end method

.method synthetic lambda$onOpenSession$1$com-sshtools-client-tasks-ShellTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)V
    .locals 1

    .line 301
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;->shellEvent(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/ShellTask;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 307
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 305
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    .line 303
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/ShellTask;->close()V

    .line 310
    throw p1
.end method

.method protected bridge synthetic onCloseSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/ShellTask;->onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onClose:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onClose:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;

    invoke-interface {v0, p0, p1}, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;->shellEvent(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 341
    throw p1

    :cond_0
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

    .line 49
    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/ShellTask;->onOpenSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method protected final onOpenSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onBeforeTask:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 299
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask;->onTask:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
