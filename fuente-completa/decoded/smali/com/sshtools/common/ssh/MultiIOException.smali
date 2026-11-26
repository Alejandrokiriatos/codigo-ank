.class public Lcom/sshtools/common/ssh/MultiIOException;
.super Ljava/io/IOException;
.source "MultiIOException.java"


# instance fields
.field private others:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/MultiIOException;-><init>(Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1

    .line 48
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object p2, p0, Lcom/sshtools/common/ssh/MultiIOException;->others:[Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/MultiIOException;-><init>([Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .locals 1

    .line 35
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    iput-object p1, p0, Lcom/sshtools/common/ssh/MultiIOException;->others:[Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getOthers()[Ljava/lang/Throwable;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sshtools/common/ssh/MultiIOException;->others:[Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 7

    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Exception %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/ssh/MultiIOException;->others:[Ljava/lang/Throwable;

    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 61
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/MultiIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
