.class public Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;
.super Landroid/provider/DocumentsProvider;
.source "AlpineDocumentProvider.java"


# static fields
.field private static final ALL_MIME_TYPES:Ljava/lang/String; = "*/*"

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mime_types"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "flags"

    aput-object v4, v0, v1

    const-string v5, "icon"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string v5, "title"

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const-string v5, "summary"

    const/4 v8, 0x5

    aput-object v5, v0, v8

    const/4 v5, 0x6

    const-string v9, "document_id"

    aput-object v9, v0, v5

    const/4 v10, 0x7

    const-string v11, "available_bytes"

    aput-object v11, v0, v10

    sput-object v0, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    aput-object v9, v0, v2

    const-string v2, "mime_type"

    aput-object v2, v0, v3

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const-string v1, "last_modified"

    aput-object v1, v0, v6

    aput-object v4, v0, v7

    const-string v1, "_size"

    aput-object v1, v0, v8

    sput-object v0, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    return-void
.end method

.method private getApplicationLabel()Ljava/lang/String;
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    const-string v1, "Código ANK"

    if-nez v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 380
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 338
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 347
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string p0, "vnd.android.document/directory"

    return-object p0

    .line 356
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 365
    :cond_1
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method private includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 273
    invoke-static {p3}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {p2}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 279
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 286
    :goto_1
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x44

    .line 292
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {p3}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    .line 298
    :cond_4
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 299
    const-string v3, "document_id"

    invoke-virtual {p1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 300
    const-string p2, "_display_name"

    invoke-virtual {p1, p2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 301
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "_size"

    invoke-virtual {p1, v1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 302
    const-string p2, "mime_type"

    invoke-virtual {p1, p2, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 303
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_modified"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 304
    const-string p2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 305
    sget p2, Lcom/foxdebug/acode/R$mipmap;->ic_launcher:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method public static isDocumentProviderEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 309
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private resolveLauncherIcon()I
    .locals 5

    .line 369
    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10d0000

    if-nez v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mipmap"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ic_launcher"

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static setDocumentProviderEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 316
    invoke-static {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->isDocumentProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 324
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    const-string v0, "Failed to create document with id "

    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 147
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 149
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    const-string p1, "vnd.android.document/directory"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p1

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_2

    .line 165
    invoke-static {v1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :catch_0
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete document with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 205
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 261
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 120
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p2

    .line 121
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 131
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 132
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 98
    new-instance p3, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object p2, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 104
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p3, v2, v1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    .line 108
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to list files in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocumentsProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 85
    new-instance v0, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    sget-object p2, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 88
    invoke-direct {p0, v0, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "public"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    sget-object p1, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getApplicationLabel()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 67
    const-string v3, "root_id"

    invoke-static {v0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 68
    const-string v3, "document_id"

    invoke-static {v0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 69
    const-string v3, "summary"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/16 v3, 0x19

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 70
    const-string v4, "flags"

    invoke-virtual {v2, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 76
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 77
    const-string p1, "mime_types"

    const-string v3, "*/*"

    invoke-virtual {v2, p1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "available_bytes"

    invoke-virtual {v2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 79
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->resolveLauncherIcon()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "icon"

    invoke-virtual {v2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "public"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 219
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    sget-object p3, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 228
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 229
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2
    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    const/16 v2, 0x32

    if-ge p1, v2, :cond_4

    .line 233
    invoke-virtual {p3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 238
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 246
    invoke-static {p3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0, v1, v2, p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 183
    const-string v2, "Failed to rename document with id "

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 189
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 197
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 200
    invoke-static {v3}, Lcom/foxdebug/acode/rk/exec/terminal/AlpineDocumentProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 195
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Target already exists: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid display name for rename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_4
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 181
    :cond_5
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to rename root document with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
