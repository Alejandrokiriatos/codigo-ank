.class public Lcom/sshtools/common/sshd/config/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;
    }
.end annotation


# instance fields
.field blankKey:Ljava/util/concurrent/atomic/AtomicInteger;

.field commentKey:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected keyEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;


# direct methods
.method static bridge synthetic -$$Nest$mfindLastValidEntry(Lcom/sshtools/common/sshd/config/Entry;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/sshd/config/Entry;->findLastValidEntry(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresolveKey(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/sshd/config/Entry;->resolveKey(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->commentKey:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->blankKey:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Lcom/sshtools/common/sshd/config/ListOrderedMap;

    invoke-direct {v0}, Lcom/sshtools/common/sshd/config/ListOrderedMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry;->sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    return-void
.end method

.method private findLastValidEntry(I)I
    .locals 1

    .line 408
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$14;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$14;-><init>(Lcom/sshtools/common/sshd/config/Entry;I)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private resolveKey(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/String;
    .locals 1

    .line 363
    instance-of v0, p1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    if-eqz v0, :cond_0

    .line 364
    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-virtual {p1}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 365
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/sshd/config/BlankEntry;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry;->getBlankEntryKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :cond_1
    instance-of p1, p1, Lcom/sshtools/common/sshd/config/CommentEntry;

    if-eqz p1, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry;->getCommentEntryKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addBeginingComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$7;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$7;-><init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/CommentEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public addCommentForEntry(Ljava/lang/String;Lcom/sshtools/common/sshd/config/CommentEntry;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry$6;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Lcom/sshtools/common/sshd/config/CommentEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public addEntry(ILcom/sshtools/common/sshd/config/SshdConfigFileEntry;)I
    .locals 1

    .line 273
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/sshtools/common/sshd/config/Entry$11;-><init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;I)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 304
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    return-void
.end method

.method public appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
    .locals 1

    .line 316
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$12;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$12;-><init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public deleteEntry(Ljava/lang/String;)V
    .locals 1

    .line 202
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$9;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$9;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 223
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry$10;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public disable(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/Entry;->find(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object p1

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->setCommentedOut(Z)V

    :cond_0
    return-void
.end method

.method public enable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/Entry;->find(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p2}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->setCommentedOut(Z)V

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    return-void
.end method

.method public entryMatches(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry$13;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method protected executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public find(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 75
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$2;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$2;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    return-object p1
.end method

.method public findEntryAtIndex(I)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 126
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$5;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$5;-><init>(Lcom/sshtools/common/sshd/config/Entry;I)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    return-object p1
.end method

.method public findEntryIndex(Ljava/lang/String;)I
    .locals 1

    .line 116
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$4;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$4;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public findKeyValueEntry(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;
    .locals 1

    .line 102
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$3;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$3;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    return-object p1
.end method

.method public getBlankEntryKey()Ljava/lang/String;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->blankKey:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Blank%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentEntryKey()Ljava/lang/String;
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->commentKey:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Comment%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    return-object p1
.end method

.method public getKeyEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$1;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/Entry$1;-><init>(Lcom/sshtools/common/sshd/config/Entry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/sshd/config/ListOrderedMap<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    check-cast v0, Lcom/sshtools/common/sshd/config/ListOrderedMap;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/Entry;->getEntry(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value exists for key %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/sshtools/common/sshd/config/Entry$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry$8;-><init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method
