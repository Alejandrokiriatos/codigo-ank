.class public Lcom/sshtools/common/files/nio/AbstractFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;
    }
.end annotation


# instance fields
.field private final path:Lcom/sshtools/common/files/nio/AbstractFilePath;


# direct methods
.method private constructor <init>(Lcom/sshtools/common/files/nio/AbstractFilePath;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->path:Lcom/sshtools/common/files/nio/AbstractFilePath;

    return-void
.end method

.method static get(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFileAttributeView;
    .locals 1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;

    invoke-direct {p1, p0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;-><init>(Lcom/sshtools/common/files/nio/AbstractFilePath;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static get(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/lang/Class;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Lcom/sshtools/common/files/nio/AbstractFilePath;",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p1, v0, :cond_0

    .line 42
    :try_start_0
    new-instance p1, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;-><init>(Lcom/sshtools/common/files/AbstractFile;)V

    check-cast p1, Ljava/nio/file/attribute/FileAttributeView;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method attribute(Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;)Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$1;->$SwitchMap$com$sshtools$common$files$nio$AbstractFileAttributeView$Attribute:[I

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :pswitch_0
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->fileKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_1
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->isOther()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_2
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->isSymbolicLink()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_3
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->isRegularFile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_4
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->isDirectory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_5
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_6
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_7
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_8
    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->size()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "basic"

    return-object v0
.end method

.method public readAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->path:Lcom/sshtools/common/files/nio/AbstractFilePath;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->readAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    move-result-object v0

    return-object v0
.end method

.method readAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->readAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->values()[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 108
    :try_start_0
    invoke-virtual {v4}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->attribute(Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 114
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 116
    :try_start_1
    invoke-static {v4}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->attribute(Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    move-result-object v0

    sget-object v1, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->lastModifiedTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    if-ne v0, v1, :cond_0

    .line 127
    check-cast p2, Ljava/nio/file/attribute/FileTime;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 131
    :catch_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' is unknown or read-only attribute"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
