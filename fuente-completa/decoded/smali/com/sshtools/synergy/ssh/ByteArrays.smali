.class public Lcom/sshtools/synergy/ssh/ByteArrays;
.super Ljava/lang/Object;
.source "ByteArrays.java"


# static fields
.field static instance:Lcom/sshtools/synergy/ssh/ByteArrays;


# instance fields
.field packets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    return-void
.end method

.method public static getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;
    .locals 1

    .line 35
    sget-object v0, Lcom/sshtools/synergy/ssh/ByteArrays;->instance:Lcom/sshtools/synergy/ssh/ByteArrays;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sshtools/synergy/ssh/ByteArrays;

    invoke-direct {v0}, Lcom/sshtools/synergy/ssh/ByteArrays;-><init>()V

    sput-object v0, Lcom/sshtools/synergy/ssh/ByteArrays;->instance:Lcom/sshtools/synergy/ssh/ByteArrays;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getByteArray(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 41
    new-array p1, p1, [B

    monitor-exit v0

    return-object p1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public releaseByteArray([B)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ByteArrays;->packets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
