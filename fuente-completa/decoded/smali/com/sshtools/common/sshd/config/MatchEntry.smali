.class public Lcom/sshtools/common/sshd/config/MatchEntry;
.super Lcom/sshtools/common/sshd/config/GlobalConfiguration;
.source "MatchEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    }
.end annotation


# static fields
.field public static final MATCH_ENTRY_CRITERIA_ADDRESS:Ljava/lang/String; = "Address"

.field public static final MATCH_ENTRY_CRITERIA_GROUP:Ljava/lang/String; = "Group"

.field public static final MATCH_ENTRY_CRITERIA_HOST:Ljava/lang/String; = "Host"

.field public static final MATCH_ENTRY_CRITERIA_LOCAL_ADDRESS:Ljava/lang/String; = "LocalAddress"

.field public static final MATCH_ENTRY_CRITERIA_LOCAL_PORT:Ljava/lang/String; = "LocalPort"

.field public static final MATCH_ENTRY_CRITERIA_RDOMAIN:Ljava/lang/String; = "RDomain"

.field public static final MATCH_ENTRY_CRITERIA_USER:Ljava/lang/String; = "User"

.field private static final MATCH_STRING_TEMPLATE:Ljava/lang/String; = "%s %s"


# instance fields
.field private commentedOut:Z

.field private matchCriteriaCommentEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/sshd/config/CommentEntry;",
            ">;"
        }
    .end annotation
.end field

.field private matchCriteriaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmatchCriteriaCommentEntries(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaCommentEntries:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmatchCriteriaMap(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcommentedOut(Lcom/sshtools/common/sshd/config/MatchEntry;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->commentedOut:Z

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/sshtools/common/sshd/config/GlobalConfiguration;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V

    .line 55
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaMap:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaCommentEntries:Ljava/util/List;

    return-void
.end method

.method private addCriteria(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$4;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private deleteCriteria(Ljava/lang/String;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$9;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$9;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public static isAllowedKey(Ljava/lang/String;)Z
    .locals 1

    .line 496
    const-string v0, "User"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Group"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Host"

    .line 497
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LocalAddress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LocalPort"

    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Address"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RDomain"

    .line 499
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNotAllowedKey(Ljava/lang/String;)Z
    .locals 0

    .line 503
    invoke-static {p0}, Lcom/sshtools/common/sshd/config/MatchEntry;->isAllowedKey(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private pushCriteria(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/MatchEntry$7;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private updateCriteria(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/MatchEntry$8;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 349
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "Address"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addAddressCriteria([Ljava/lang/String;)V
    .locals 1

    .line 345
    const-string v0, "Address"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addComment(Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaCommentEntries:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-direct {v1, p1}, Lcom/sshtools/common/sshd/config/CommentEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCriteria(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addGroupCriteria(Ljava/lang/String;)V
    .locals 1

    .line 257
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addGroupCriteria([Ljava/lang/String;)V
    .locals 1

    .line 253
    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addHostCriteria(Ljava/lang/String;)V
    .locals 1

    .line 280
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "Host"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addHostCriteria([Ljava/lang/String;)V
    .locals 1

    .line 276
    const-string v0, "Host"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addLocalAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 303
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAddress"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addLocalAddressCriteria([Ljava/lang/String;)V
    .locals 1

    .line 299
    const-string v0, "LocalAddress"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addLocalPortCriteria(Ljava/lang/String;)V
    .locals 1

    .line 326
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPort"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addLocalPortCriteria([Ljava/lang/String;)V
    .locals 1

    .line 322
    const-string v0, "LocalPort"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addMatchCriteriaComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$1;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Lcom/sshtools/common/sshd/config/CommentEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public addRDomainCriteria(Ljava/lang/String;)V
    .locals 1

    .line 371
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "RDomain"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addRDomainCriteria([Ljava/lang/String;)V
    .locals 1

    .line 367
    const-string v0, "RDomain"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addUserCriteria(Ljava/lang/String;)V
    .locals 1

    .line 234
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "User"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addUserCriteria([Ljava/lang/String;)V
    .locals 1

    .line 230
    const-string v0, "User"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public deleteAddressCriteria()V
    .locals 1

    .line 361
    const-string v0, "Address"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGroupCriteria()V
    .locals 1

    .line 269
    const-string v0, "Group"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteHostCriteria()V
    .locals 1

    .line 292
    const-string v0, "Host"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteLocalAddressCriteria()V
    .locals 1

    .line 315
    const-string v0, "LocalAddress"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteLocalPortCriteria()V
    .locals 1

    .line 338
    const-string v0, "LocalPort"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteRDomainCriteria()V
    .locals 1

    .line 383
    const-string v0, "RDomain"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUserCriteria()V
    .locals 1

    .line 246
    const-string v0, "User"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->deleteCriteria(Ljava/lang/String;)V

    return-void
.end method

.method public disable()V
    .locals 2

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->commentedOut:Z

    .line 81
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry;->getKeyEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1}, Lcom/sshtools/common/sshd/config/MatchEntry;->disable(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFormattedLine()Ljava/lang/String;
    .locals 2

    .line 756
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->commentedOut:Z

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry;->matchEntryCriteriaAsString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#Match %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry;->matchEntryCriteriaAsString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Match %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchCriteriaCommentEntriesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/common/sshd/config/CommentEntry;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaCommentEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasAddressEntry()Z
    .locals 1

    .line 474
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$17;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$17;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasGroupEntry()Z
    .locals 1

    .line 430
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$13;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$13;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasHostEntry()Z
    .locals 1

    .line 441
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$14;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$14;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 408
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$11;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$11;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hasLocalAddressEntry()Z
    .locals 1

    .line 452
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$15;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$15;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasLocalPortEntry()Z
    .locals 1

    .line 463
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$16;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$16;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasRDomainEntry()Z
    .locals 1

    .line 485
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$18;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$18;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasUserEntry()Z
    .locals 1

    .line 419
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$12;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$12;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->commentedOut:Z

    return v0
.end method

.method public matchEntryCriteriaAsString()Ljava/lang/String;
    .locals 1

    .line 100
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$3;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$3;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public matchValueAgainstPattern(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/MatchEntry$5;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public matchValueExact(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/sshd/config/MatchEntry$6;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public parse([Ljava/lang/String;)V
    .locals 1

    .line 389
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$10;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$10;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public pushAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 353
    const-string v0, "Address"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushGroupCriteria(Ljava/lang/String;)V
    .locals 1

    .line 261
    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushHostCriteria(Ljava/lang/String;)V
    .locals 1

    .line 284
    const-string v0, "Host"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushLocalAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 307
    const-string v0, "LocalAddress"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushLocalPortCriteria(Ljava/lang/String;)V
    .locals 1

    .line 330
    const-string v0, "LocalPort"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushRDomainCriteria(Ljava/lang/String;)V
    .locals 1

    .line 375
    const-string v0, "RDomain"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushUserCriteria(Ljava/lang/String;)V
    .locals 1

    .line 238
    const-string v0, "User"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 91
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$2;

    invoke-direct {v0, p0}, Lcom/sshtools/common/sshd/config/MatchEntry$2;-><init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->matchCriteriaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry;->keyEntries:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MatchEntry [matchCriteriaMap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyEntries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 357
    const-string v0, "Address"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGroupCriteria(Ljava/lang/String;)V
    .locals 1

    .line 265
    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateHostCriteria(Ljava/lang/String;)V
    .locals 1

    .line 288
    const-string v0, "Host"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLocalAddressCriteria(Ljava/lang/String;)V
    .locals 1

    .line 311
    const-string v0, "LocalAddress"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLocalPortCriteria(Ljava/lang/String;)V
    .locals 1

    .line 334
    const-string v0, "LocalPort"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRDomainCriteria(Ljava/lang/String;)V
    .locals 1

    .line 379
    const-string v0, "RDomain"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateUserCriteria(Ljava/lang/String;)V
    .locals 1

    .line 242
    const-string v0, "User"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/sshd/config/MatchEntry;->updateCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
