//
//  Knock021.swift
//  Knock
//

import SwiftUI

struct Knock021: View {
    @State var isExpanded: Bool = false
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: CGFloat(10)) {
                OneTextView()
                TwoTextView()
            }.frame(alignment: .topLeading)
        }.frame(maxWidth: .infinity)
    }
}

private struct OneTextView: View {
    @State var isExpanded: Bool = false

    private let title = """
    ひまわりの約束
    """

    private let detail = """
    田舎の小さな町、午後の静けさが広がる中で、一軒の家が人々の目を引いた。
    その家の前の庭は、どこまでも伸びる黄金色のひまわり畑だった。
    その真ん中には、毎日ひまわりたちと話をする老人の姿があった。
    """

    private let content = """
    彼の名はジョン。彼はこの町で生まれ育ち、この広大なひまわり畑を一生懸命育てていた。
    ジョンは町のみんなから敬愛されている存在だった。彼の笑顔は、町の人々にまるで太陽のような明るさと暖かさを与えてくれた。
    「ひまわりたちは言葉を話さないけれど、彼らは笑顔で心を通わせてくれるんだ」と、ジョンは子供たちに話して聞かせていました。
    そして彼は毎日ひまわりたちと語りかけ、誓いを立て続けた。それは妻が亡くなった後、彼女を思い出させるひまわり畑を育てるという約束だった。
    季節が巡り、ひまわりたちは一面に咲き誇り、太陽の光を一杯に受けていた。
    彼らの明るさは、ジョンの心を満たし、町の人々に希望を与え続けていた。それは一つの小さな奇蹟のようで、ひまわりの約束を終えることなく、ジョンと共に、その物語は続いていく。
    """

    var body: some View {
        VStack(alignment: .leading, spacing: CGFloat(10)) {
            Text(title)
            Text(detail)
            if isExpanded {
                Text(content)
                Button(
                    action: { isExpanded = false },
                    label: { Text("Fold") }
                )
            } else {
                Button(
                    action: { isExpanded = true },
                    label: { Text("More") }
                )
            }
        }
    }
}

private struct TwoTextView: View {
    @State var isExpanded: Bool = false

    private let title = """
    星空のブックカフェ
    """

    private let detail = """
    かつての繁華街の中心部、ひときわ目立つ小さなカフェがあった。
    そのカフェの名前は「星空のブックカフェ」。
    カフェでは闇夜に輝く星空が天井に広がり、壁一面に本棚が並んでいた。
    訪れる者たちは皆、一息つきながら好きな本を読むことができた。
    """

    private let content = """
    そのカフェのオーナーはエミリーという元気で笑顔溢れる女性だった。彼女は料理も得意で、特に彼女が焼く自家製マフィンは絶品で、
    客たちはその香りに引き寄せられて訪れた。AからZまでどんな本でも揃っているこのカフェは、本好きの人々にとってまさに楽園だった。
    本棚から手に取られる本は何冊もあり、その中には古い絵本から最新の人気小説まで様々だった。
    このカフェに訪れると人々は時間を忘れ、自分だけの静かな時間を楽しむことが出来た。子供から大人まで、誰もがエミリーのカフェを訪れるのが楽しみだった。
    ある日、神秘的な新しい本が出現し、それが物語の展開を新たな方向へと導く。しかし、その展開は次回の話にまわすとしましょう...。
    """

    var body: some View {
        VStack(alignment: .leading, spacing: CGFloat(10)) {
            Text(title)
            Text(detail)
            if isExpanded {
                Text(content)
                Button(
                    action: { isExpanded = false },
                    label: { Text("Fold") }
                )
            } else {
                Button(
                    action: { isExpanded = true },
                    label: { Text("More") }
                )
            }
        }
    }
}

#Preview {
    Knock021()
}
