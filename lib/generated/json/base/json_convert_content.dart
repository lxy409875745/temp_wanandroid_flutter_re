// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:wanandroid_flutter_re/entity/app_settings_entity.dart';
import 'package:wanandroid_flutter_re/entity/article_entity.dart';
import 'package:wanandroid_flutter_re/entity/article_list_entity.dart';
import 'package:wanandroid_flutter_re/entity/article_tag_entity.dart';
import 'package:wanandroid_flutter_re/entity/banner_entity.dart';
import 'package:wanandroid_flutter_re/entity/coin_list_entity.dart';
import 'package:wanandroid_flutter_re/entity/collect_web_entity.dart';
import 'package:wanandroid_flutter_re/entity/hot_keywords_entity.dart';
import 'package:wanandroid_flutter_re/entity/login_entity.dart';
import 'package:wanandroid_flutter_re/entity/nav_entity.dart';
import 'package:wanandroid_flutter_re/entity/private_article_entity.dart';
import 'package:wanandroid_flutter_re/entity/tab_tag_entity.dart';
import 'package:wanandroid_flutter_re/entity/tool_entity.dart';
import 'package:wanandroid_flutter_re/entity/user_coin_entity.dart';
import 'package:wanandroid_flutter_re/entity/wan_common_list_entity.dart';
import 'package:wanandroid_flutter_re/entity/wan_common_result_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
	static final Map<String, JsonConvertFunction> _convertFuncMap = {
		(AppSettingsEntity).toString(): AppSettingsEntity.fromJson,
		(ArticleEntity).toString(): ArticleEntity.fromJson,
		(ArticleListEntity).toString(): ArticleListEntity.fromJson,
		(ArticleTagEntity).toString(): ArticleTagEntity.fromJson,
		(BannerEntity).toString(): BannerEntity.fromJson,
		(CoinListEntity).toString(): CoinListEntity.fromJson,
		(CoinListDatas).toString(): CoinListDatas.fromJson,
		(CollectWebEntity).toString(): CollectWebEntity.fromJson,
		(HotKeywordsEntity).toString(): HotKeywordsEntity.fromJson,
		(LoginEntity).toString(): LoginEntity.fromJson,
		(NavEntity).toString(): NavEntity.fromJson,
		(PrivateArticleEntity).toString(): PrivateArticleEntity.fromJson,
		(TabTagEntity).toString(): TabTagEntity.fromJson,
		(TabTagChildren).toString(): TabTagChildren.fromJson,
		(ToolEntity).toString(): ToolEntity.fromJson,
		(UserCoinEntity).toString(): UserCoinEntity.fromJson,
		(WanCommonListEntity).toString(): WanCommonListEntity.fromJson,
		(WanCommonResultEntity).toString(): WanCommonResultEntity.fromJson,
	};

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if(value == null){
      return null;
    }
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<AppSettingsEntity>[] is M){
			return data.map<AppSettingsEntity>((Map<String, dynamic> e) => AppSettingsEntity.fromJson(e)).toList() as M;
		}
		if(<ArticleEntity>[] is M){
			return data.map<ArticleEntity>((Map<String, dynamic> e) => ArticleEntity.fromJson(e)).toList() as M;
		}
		if(<ArticleListEntity>[] is M){
			return data.map<ArticleListEntity>((Map<String, dynamic> e) => ArticleListEntity.fromJson(e)).toList() as M;
		}
		if(<ArticleTagEntity>[] is M){
			return data.map<ArticleTagEntity>((Map<String, dynamic> e) => ArticleTagEntity.fromJson(e)).toList() as M;
		}
		if(<BannerEntity>[] is M){
			return data.map<BannerEntity>((Map<String, dynamic> e) => BannerEntity.fromJson(e)).toList() as M;
		}
		if(<CoinListEntity>[] is M){
			return data.map<CoinListEntity>((Map<String, dynamic> e) => CoinListEntity.fromJson(e)).toList() as M;
		}
		if(<CoinListDatas>[] is M){
			return data.map<CoinListDatas>((Map<String, dynamic> e) => CoinListDatas.fromJson(e)).toList() as M;
		}
		if(<CollectWebEntity>[] is M){
			return data.map<CollectWebEntity>((Map<String, dynamic> e) => CollectWebEntity.fromJson(e)).toList() as M;
		}
		if(<HotKeywordsEntity>[] is M){
			return data.map<HotKeywordsEntity>((Map<String, dynamic> e) => HotKeywordsEntity.fromJson(e)).toList() as M;
		}
		if(<LoginEntity>[] is M){
			return data.map<LoginEntity>((Map<String, dynamic> e) => LoginEntity.fromJson(e)).toList() as M;
		}
		if(<NavEntity>[] is M){
			return data.map<NavEntity>((Map<String, dynamic> e) => NavEntity.fromJson(e)).toList() as M;
		}
		if(<PrivateArticleEntity>[] is M){
			return data.map<PrivateArticleEntity>((Map<String, dynamic> e) => PrivateArticleEntity.fromJson(e)).toList() as M;
		}
		if(<TabTagEntity>[] is M){
			return data.map<TabTagEntity>((Map<String, dynamic> e) => TabTagEntity.fromJson(e)).toList() as M;
		}
		if(<TabTagChildren>[] is M){
			return data.map<TabTagChildren>((Map<String, dynamic> e) => TabTagChildren.fromJson(e)).toList() as M;
		}
		if(<ToolEntity>[] is M){
			return data.map<ToolEntity>((Map<String, dynamic> e) => ToolEntity.fromJson(e)).toList() as M;
		}
		if(<UserCoinEntity>[] is M){
			return data.map<UserCoinEntity>((Map<String, dynamic> e) => UserCoinEntity.fromJson(e)).toList() as M;
		}
		if(<WanCommonListEntity>[] is M){
			return data.map<WanCommonListEntity>((Map<String, dynamic> e) => WanCommonListEntity.fromJson(e)).toList() as M;
		}
		if(<WanCommonResultEntity>[] is M){
			return data.map<WanCommonResultEntity>((Map<String, dynamic> e) => WanCommonResultEntity.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.asT<M>(json);
		}
	}
}