.class public Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
.super Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;
.source "MatchEntry.java"

# interfaces
.implements Lcom/sshtools/common/sshd/config/EntryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchEntryBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder<",
        "Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;",
        ">;",
        "Lcom/sshtools/common/sshd/config/EntryBuilder<",
        "Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

.field private parentBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;


# direct methods
.method static bridge synthetic -$$Nest$fgetparentBuilder(Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;)Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->parentBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    return-object p0
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;Lcom/sshtools/common/sshd/config/MatchEntry;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;-><init>()V

    .line 527
    iput-object p4, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    .line 528
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->parentBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    .line 530
    iput-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    .line 532
    iput-object p3, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    .line 533
    iget-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    iget-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {p1, p2}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->set(Lcom/sshtools/common/sshd/config/Entry;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;Z)V
    .locals 0

    .line 516
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->parentBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    .line 519
    iput-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    .line 520
    iget-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->addMatchEntry()Lcom/sshtools/common/sshd/config/MatchEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    .line 521
    invoke-static {p1, p4}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fputcommentedOut(Lcom/sshtools/common/sshd/config/MatchEntry;Z)V

    .line 522
    iput-object p3, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    .line 523
    iget-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    iget-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {p1, p2}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->set(Lcom/sshtools/common/sshd/config/Entry;)V

    return-void
.end method


# virtual methods
.method public addAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 691
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addAddressCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addAddressCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addAddressCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addGroupCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 595
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addGroupCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addGroupCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addGroupCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addHostCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 619
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addHostCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHostCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addHostCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addLocalAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 667
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addLocalAddressCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addLocalAddressCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addLocalAddressCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addLocalPortCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 643
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addLocalPortCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addLocalPortCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addLocalPortCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addMatchCriteriaComment(Lcom/sshtools/common/sshd/config/CommentEntry;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addMatchCriteriaComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V

    return-object p0
.end method

.method public addRDomainCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 715
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addRDomainCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addRDomainCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addRDomainCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public addUserCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 571
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->addUserCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addUserCriteria([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addUserCriteria([Ljava/lang/String;)V

    return-object p0
.end method

.method public deleteAddressCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteAddressCriteria()V

    return-object p0
.end method

.method public deleteGroupCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteGroupCriteria()V

    return-object p0
.end method

.method public deleteHostCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteHostCriteria()V

    return-object p0
.end method

.method public deleteLocalAddressCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteLocalAddressCriteria()V

    return-object p0
.end method

.method public deleteLocalPortCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteLocalPortCriteria()V

    return-object p0
.end method

.method public deleteRDomainCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteRDomainCriteria()V

    return-object p0
.end method

.method public deleteUserCriteria()Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteUserCriteria()V

    return-object p0
.end method

.method public end()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    new-instance v1, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    return-object v0
.end method

.method public bridge synthetic end()Ljava/lang/Object;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->end()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    return-object v0
.end method

.method public parse([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->parse([Ljava/lang/String;)V

    return-object p0
.end method

.method public pushAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushAddressCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushGroupCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushGroupCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushHostCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushHostCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushLocalAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushLocalAddressCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushLocalPortCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushLocalPortCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushRDomainCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushRDomainCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushUserCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushUserCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateAddressCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateGroupCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateGroupCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateHostCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateHostCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateLocalAddressCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateLocalAddressCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateLocalPortCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateLocalPortCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateRDomainCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateRDomainCriteria(Ljava/lang/String;)V

    return-object p0
.end method

.method public updateUserCriteria(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateUserCriteria(Ljava/lang/String;)V

    return-object p0
.end method
