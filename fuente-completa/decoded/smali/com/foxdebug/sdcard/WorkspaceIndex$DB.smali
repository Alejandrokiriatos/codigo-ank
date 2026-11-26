.class Lcom/foxdebug/sdcard/WorkspaceIndex$DB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sdcard/WorkspaceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DB"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1907
    const-string v2, "acode_workspace_index.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1912
    const-string v0, "CREATE TABLE IF NOT EXISTS workspaces (root_url TEXT PRIMARY KEY, title TEXT, indexed_at INTEGER, options_hash TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1920
    const-string v0, "CREATE TABLE IF NOT EXISTS files (url TEXT, root_url TEXT, parent_url TEXT, path TEXT, name TEXT, mime TEXT, is_directory INTEGER, size INTEGER, modified_date INTEGER, indexed_at INTEGER, skipped_reason TEXT, PRIMARY KEY (root_url, url))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1936
    const-string v0, "CREATE TABLE IF NOT EXISTS content (url TEXT PRIMARY KEY, size INTEGER, modified_date INTEGER, encoding TEXT, text TEXT, lower_text TEXT, indexed_at INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1947
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_files_root ON files(root_url)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1948
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_files_parent ON files(parent_url)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1953
    const-string p2, "DROP TABLE IF EXISTS content"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1954
    const-string p2, "DROP TABLE IF EXISTS files"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1955
    const-string p2, "DROP TABLE IF EXISTS workspaces"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
