.class public final Landroidx/webkit/UserAgentMetadata;
.super Ljava/lang/Object;
.source "UserAgentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/UserAgentMetadata$Builder;,
        Landroidx/webkit/UserAgentMetadata$BrandVersion;
    }
.end annotation


# static fields
.field public static final BITNESS_DEFAULT:I


# instance fields
.field private final mArchitecture:Ljava/lang/String;

.field private mBitness:I

.field private final mBrandVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullVersion:Ljava/lang/String;

.field private mMobile:Z

.field private final mModel:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private final mPlatformVersion:Ljava/lang/String;

.field private mWow64:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZ)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 61
    iput-object p2, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 66
    iput-boolean p7, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 67
    iput p8, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 68
    iput-boolean p9, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLandroidx/webkit/UserAgentMetadata$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p9}, Landroidx/webkit/UserAgentMetadata;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Landroidx/webkit/UserAgentMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    check-cast p1, Landroidx/webkit/UserAgentMetadata;

    .line 179
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    iget v3, p1, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 180
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 181
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 182
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 183
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    iget-object p1, p1, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 184
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBitness()I
    .locals 1

    .line 156
    iget v0, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    return v0
.end method

.method public getBrandVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    return-object v0
.end method

.method public getFullVersion()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 189
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    iget-object v3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    iget-object v4, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    iget-object v5, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    iget-boolean v6, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 190
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMobile()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    return v0
.end method

.method public isWow64()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    return v0
.end method
