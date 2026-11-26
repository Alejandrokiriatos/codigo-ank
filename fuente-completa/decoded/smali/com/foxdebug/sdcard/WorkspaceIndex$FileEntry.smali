.class Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;
.super Ljava/lang/Object;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sdcard/WorkspaceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation


# instance fields
.field final isDirectory:Z

.field final mime:Ljava/lang/String;

.field final modifiedDate:J

.field final name:Ljava/lang/String;

.field final parentUrl:Ljava/lang/String;

.field final path:Ljava/lang/String;

.field final rootUrl:Ljava/lang/String;

.field final size:J

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .locals 0

    .line 1829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->rootUrl:Ljava/lang/String;

    .line 1831
    iput-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->parentUrl:Ljava/lang/String;

    .line 1832
    iput-object p3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 1833
    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    if-nez p5, :cond_1

    move-object p5, p4

    .line 1834
    :cond_1
    iput-object p5, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    .line 1835
    iput-object p6, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->mime:Ljava/lang/String;

    .line 1836
    iput-boolean p7, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    const-wide/16 p1, 0x0

    .line 1837
    invoke-static {p1, p2, p8, p9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    .line 1838
    invoke-static {p1, p2, p10, p11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->modifiedDate:J

    return-void
.end method

.method static fromJSON(Lorg/json/JSONObject;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;
    .locals 15

    .line 1860
    new-instance v0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    .line 1861
    const-string v1, "rootUrl"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "parent"

    .line 1862
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parentUrl"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 1863
    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 1864
    invoke-virtual {p0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "path"

    .line 1865
    invoke-virtual {p0, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "type"

    const/4 v7, 0x0

    .line 1866
    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mime"

    invoke-virtual {p0, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isDirectory"

    const/4 v8, 0x0

    .line 1867
    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1868
    const-string v8, "size"

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v8, "lastModified"

    .line 1869
    invoke-virtual {p0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "modifiedDate"

    invoke-virtual {p0, v10, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object v10, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    move-wide v13, v11

    move-wide v10, v8

    move-wide v8, v13

    invoke-direct/range {v0 .. v11}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    return-object v0
.end method

.method private isTextExtension(Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 1899
    const-string p1, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 v0, 0x2e

    .line 1900
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1901
    invoke-static {}, Lcom/foxdebug/sdcard/WorkspaceIndex;->-$$Nest$sfgetTEXT_EXTENSIONS()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method isBinary()Z
    .locals 7

    .line 1874
    iget-boolean v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->mime:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1876
    :goto_0
    const-string v2, "text/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/foxdebug/sdcard/WorkspaceIndex;->-$$Nest$sfgetTEXT_MIME_TYPES()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 1877
    :cond_2
    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isTextExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 1878
    :cond_3
    const-string v2, "audio/"

    .line 1879
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    const-string v2, "font/"

    .line 1880
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "image/"

    .line 1881
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "model/"

    .line 1882
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "video/"

    .line 1883
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/foxdebug/sdcard/WorkspaceIndex;->-$$Nest$sfgetBINARY_MIME_TYPES()Ljava/util/Set;

    move-result-object v2

    .line 1884
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1889
    :cond_4
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    .line 1890
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v5, v4, 0x1

    .line 1892
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1893
    invoke-static {}, Lcom/foxdebug/sdcard/WorkspaceIndex;->-$$Nest$sfgetBINARY_EXTENSIONS()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v3

    :cond_6
    sub-int/2addr v4, v3

    .line 1894
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_7

    .line 1895
    invoke-static {}, Lcom/foxdebug/sdcard/WorkspaceIndex;->-$$Nest$sfgetBINARY_EXTENSIONS()Ljava/util/Set;

    move-result-object v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v3

    :cond_9
    :goto_2
    return v1
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1842
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1843
    const-string v1, "rootUrl"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1844
    const-string v1, "parent"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->parentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1845
    const-string v1, "parentUrl"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->parentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1846
    const-string v1, "url"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1847
    const-string v1, "uri"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1848
    const-string v1, "name"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1849
    const-string v1, "path"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1850
    const-string v1, "mime"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1851
    const-string v1, "type"

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1852
    const-string v1, "isDirectory"

    iget-boolean v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1853
    iget-boolean v1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "isFile"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1854
    const-string v1, "size"

    iget-wide v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1855
    const-string v1, "modifiedDate"

    iget-wide v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->modifiedDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
