.class public Lcom/foxdebug/system/Ui$Theme;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/system/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Theme"
.end annotation


# instance fields
.field private theme:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/foxdebug/system/Ui$Theme;->theme:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 1

    .line 113
    const-string v0, "#000000"

    invoke-virtual {p0, p1, v0}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/foxdebug/system/Ui$Theme;->theme:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/foxdebug/system/Ui$Theme;->theme:Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "light"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
