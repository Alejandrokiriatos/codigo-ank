.class public Lcom/sshtools/common/logger/FileWatchingService;
.super Ljava/lang/Thread;
.source "FileWatchingService.java"


# static fields
.field private static instance:Lcom/sshtools/common/logger/FileWatchingService;


# instance fields
.field paths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lcom/sshtools/common/logger/FileWatchingCallback;",
            ">;"
        }
    .end annotation
.end field

.field service:Ljava/nio/file/WatchService;

.field private stop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->paths:Ljava/util/Map;

    .line 50
    const-string v0, "FileWatchingService"

    invoke-virtual {p0, v0}, Lcom/sshtools/common/logger/FileWatchingService;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/sshtools/common/logger/FileWatchingService;->setDaemon(Z)V

    .line 52
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->service:Ljava/nio/file/WatchService;

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/logger/FileWatchingService$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/logger/FileWatchingService$1;-><init>(Lcom/sshtools/common/logger/FileWatchingService;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static getInstance()Lcom/sshtools/common/logger/FileWatchingService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/sshtools/common/logger/FileWatchingService;->instance:Lcom/sshtools/common/logger/FileWatchingService;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/sshtools/common/logger/FileWatchingService;

    invoke-direct {v0}, Lcom/sshtools/common/logger/FileWatchingService;-><init>()V

    sput-object v0, Lcom/sshtools/common/logger/FileWatchingService;->instance:Lcom/sshtools/common/logger/FileWatchingService;

    .line 64
    :cond_0
    sget-object v0, Lcom/sshtools/common/logger/FileWatchingService;->instance:Lcom/sshtools/common/logger/FileWatchingService;

    return-object v0
.end method


# virtual methods
.method public doOnChange(Ljava/nio/file/Path;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->paths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/FileWatchingCallback;

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/sshtools/common/logger/FileWatchingCallback;->changed(Ljava/nio/file/Path;)V

    :cond_0
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public register(Ljava/nio/file/Path;Lcom/sshtools/common/logger/FileWatchingCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->paths:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/common/logger/FileWatchingService;->service:Ljava/nio/file/WatchService;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/WatchEvent$Kind;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    aput-object v2, v0, v1

    invoke-interface {p1, p2, v0}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    return-void
.end method

.method public run()V
    .locals 5

    .line 90
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/logger/FileWatchingService;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->service:Ljava/nio/file/WatchService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    invoke-interface {v0, v2, v3, v1}, Ljava/nio/file/WatchService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 94
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/WatchEvent;

    .line 97
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    .line 101
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 103
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_2

    .line 104
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 106
    :cond_2
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_3

    .line 107
    invoke-virtual {p0, v2}, Lcom/sshtools/common/logger/FileWatchingService;->doOnChange(Ljava/nio/file/Path;)V

    .line 109
    :cond_3
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->reset()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    :cond_5
    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService;->service:Ljava/nio/file/WatchService;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {p0}, Lcom/sshtools/common/logger/FileWatchingService;->interrupt()V

    return-void
.end method
