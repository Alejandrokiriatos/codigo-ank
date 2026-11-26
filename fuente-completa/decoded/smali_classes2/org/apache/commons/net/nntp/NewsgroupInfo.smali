.class public final Lorg/apache/commons/net/nntp/NewsgroupInfo;
.super Ljava/lang/Object;
.source "NewsgroupInfo.java"


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

.field public static final MODERATED_POSTING_PERMISSION:I = 0x1

.field public static final PERMITTED_POSTING_PERMISSION:I = 0x2

.field public static final PROHIBITED_POSTING_PERMISSION:I = 0x3

.field public static final UNKNOWN_POSTING_PERMISSION:I


# instance fields
.field private estimatedArticleCount:J

.field private firstArticle:J

.field private lastArticle:J

.field private newsgroup:Ljava/lang/String;

.field private postingPermission:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    sput-object v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getArticleCountLong()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    return-wide v0
.end method

.method public getFirstArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getFirstArticleLong()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    return-wide v0
.end method

.method public getLastArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getLastArticleLong()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    return-wide v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPostingPermission()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    return v0
.end method

.method setArticleCount(J)V
    .locals 0

    .line 140
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    return-void
.end method

.method setFirstArticle(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    return-void
.end method

.method setLastArticle(J)V
    .locals 0

    .line 156
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    return-void
.end method

.method setNewsgroup(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    return-void
.end method

.method setPostingPermission(I)V
    .locals 0

    .line 164
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    return-void
.end method
