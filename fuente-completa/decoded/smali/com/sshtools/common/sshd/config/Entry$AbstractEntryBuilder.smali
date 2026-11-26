.class public abstract Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sshd/config/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractEntryBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

.field protected file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

.field protected pointer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    invoke-direct {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    const/4 v0, -0x1

    .line 447
    iput v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    return-void
.end method


# virtual methods
.method public addBeginingComment(Lcom/sshtools/common/sshd/config/CommentEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/config/CommentEntry;",
            ")TT;"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->addBeginingComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V

    return-object p0
.end method

.method public addComment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 485
    new-instance v0, Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-direct {v0, p1}, Lcom/sshtools/common/sshd/config/CommentEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->addEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/Object;

    return-object p0
.end method

.method public addCommentForEntry(Ljava/lang/String;Lcom/sshtools/common/sshd/config/CommentEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/CommentEntry;",
            ")TT;"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry;->addCommentForEntry(Ljava/lang/String;Lcom/sshtools/common/sshd/config/CommentEntry;)V

    return-object p0
.end method

.method public addCommentForEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-direct {v1, p2}, Lcom/sshtools/common/sshd/config/CommentEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/sshd/config/Entry;->addCommentForEntry(Ljava/lang/String;Lcom/sshtools/common/sshd/config/CommentEntry;)V

    return-object p0
.end method

.method public addEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ")TT;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    new-instance v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$1;-><init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;",
            ")TT;"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    return-object p0
.end method

.method public cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->deleteEntry(Ljava/lang/String;)V

    return-object p0
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

    .line 597
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry;->entryMatches(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public entryMatches(Ljava/lang/String;Ljava/util/Collection;Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result<",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->entryMatches(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public findEntry(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    return-object p1
.end method

.method public findEntry(Ljava/lang/String;Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result<",
            "Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;",
            ">;)TT;"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    .line 586
    invoke-interface {p2, p1}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public findEntryAtIndex(I)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->findEntryAtIndex(I)Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object p1

    return-object p1
.end method

.method public findEntryIndex(Ljava/lang/String;)I
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->findEntryIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findEntryIndex(Ljava/lang/String;Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result<",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/Entry;->findEntryIndex(Ljava/lang/String;)I

    move-result p1

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$Result;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public findEntryToEdit(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    new-instance v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;-><init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;
.end method

.method public resetPointer()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    new-instance v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;

    invoke-direct {v1, p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$3;-><init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/sshd/config/Entry;->updateEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
