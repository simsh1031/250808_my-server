<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>초보자를 위한 다채로운 HTML 예제</title>
    <meta name="description" content="초보자도 쉽게 이해할 수 있는 다채롭고 즐거운 HTML/CSS/JS 예제입니다.">
    <style>
        /* 전체 레이아웃 */
        :root{
            --bg: linear-gradient(135deg,#f8f0ff 0%, #e0fbff 60%, #fff7e6 100%);
            --card-bg: rgba(255,255,255,0.75);
            --glass: rgba(255,255,255,0.5);
            --accent1: #ff6b6b;
            --accent2: #5f27cd;
            --accent3: #01a3a4;
            --muted: #555;
        }
        html,body{height:100%;}
        body{
            margin:0;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Noto Sans KR', 'Helvetica', Arial;
            background: var(--bg);
            display:flex;
            align-items:center;
            justify-content:center;
            padding:2rem;
            -webkit-font-smoothing:antialiased;
        }

        /* 컨테이너 */
        .wrap{
            width:100%;
            max-width:980px;
            backdrop-filter: blur(6px);
            border-radius:16px;
            box-shadow: 0 10px 30px rgba(12,12,35,0.12);
            overflow:hidden;
            border:1px solid rgba(255,255,255,0.6);
            background: linear-gradient(180deg, rgba(255,255,255,0.55), rgba(255,255,255,0.35));
        }

        header{
            padding:1.6rem 2rem;
            display:flex;
            align-items:center;
            gap:1rem;
        }
        .logo{
            width:64px;height:64px;border-radius:12px;
            background: conic-gradient(from 180deg at 50% 50%, var(--accent1), var(--accent2), var(--accent3));
            display:flex;align-items:center;justify-content:center;color:white;font-weight:700;
            box-shadow: 0 6px 18px rgba(95,39,205,0.18);
            flex-shrink:0;
        }
        h1{font-size:1.25rem;margin:0}
        p.lead{margin:0;color:var(--muted);font-size:0.95rem}

        main{display:grid;grid-template-columns:1fr 320px;gap:1rem;padding:1rem 2rem 2rem}

        /* 왼쪽: 카드 그리드 */
        .grid{
            display:grid;
            grid-template-columns:repeat(auto-fill,minmax(220px,1fr));
            gap:1rem;
        }
        .card{
            background: var(--card-bg);
            border-radius:12px;padding:1rem;min-height:120px;
            display:flex;flex-direction:column;gap:0.6rem;
            transition:transform .28s ease, box-shadow .28s ease;
            border:1px solid rgba(255,255,255,0.5);
        }
        .card:hover{transform:translateY(-8px);box-shadow:0 18px 40px rgba(12,12,35,0.12)}
        .tag{display:inline-block;padding:0.25rem 0.6rem;border-radius:999px;font-size:0.78rem}
        .tag.pink{background:linear-gradient(90deg,#ffd6d6,#ffb3b3);color:#7b0b0b}
        .tag.purple{background:linear-gradient(90deg,#e9d7ff,#d6b8ff);color:#3a0a5a}
        .card h3{margin:0;font-size:1.05rem}
        .card p{margin:0;color:var(--muted);font-size:0.9rem}

        /* 오른쪽 사이드바 */
        .sidebar{padding:1rem;background:linear-gradient(180deg, rgba(255,255,255,0.6), rgba(255,255,255,0.45));border-radius:12px;min-height:260px;border:1px solid rgba(255,255,255,0.5)}
        .btn{display:inline-block;padding:0.6rem 0.9rem;border-radius:10px;border:none;cursor:pointer;font-weight:600}
        .btn.accent{background:linear-gradient(90deg,var(--accent2),var(--accent3));color:white}
        .btn.ghost{background:transparent;border:1px solid rgba(0,0,0,0.06)}

        /* 작은 상호작용과 애니메이션 */
        .color-row{display:flex;gap:8px;margin:0.6rem 0}
        .swatch{width:36px;height:36px;border-radius:8px;box-shadow:inset 0 -6px 18px rgba(0,0,0,0.08);cursor:pointer;border:2px solid rgba(255,255,255,0.5)}
        .swatch:active{transform:scale(0.98)}

        footer{padding:1rem 2rem;border-top:1px dashed rgba(0,0,0,0.06);display:flex;align-items:center;justify-content:space-between}
        .small{font-size:0.85rem;color:var(--muted)}

        /* 반응형 */
        @media (max-width:840px){main{grid-template-columns:1fr;}
            .sidebar{order:2}
        }
    </style>
</head>
<body>
<div class="wrap" role="region" aria-label="색감 있는 예제 레이아웃">
    <header>
        <div class="logo" aria-hidden="true">HTML</div>
        <div>
            <h1>초보자를 위한 다채로운 HTML 예제</h1>
            <p class="lead">간단한 구조, CSS 효과, 그리고 약간의 JavaScript로 구성된 인터랙티브 데모입니다.</p>
        </div>
    </header>

    <main>
        <section aria-labelledby="cards-section">
            <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:0.6rem">
                <h2 id="cards-section" style="margin:0;font-size:1rem">기능 카드</h2>
                <div style="font-size:0.85rem;color:var(--muted)">마우스를 올려보세요</div>
            </div>

            <div class="grid">
                <article class="card" tabindex="0">
                    <div class="tag pink">시각</div>
                    <h3>부드러운 그림자와 호버</h3>
                    <p>간단한 transform과 box-shadow로 카드에 깊이감을 더했습니다.</p>
                </article>

                <article class="card" tabindex="0">
                    <div class="tag purple">텍스트</div>
                    <h3>접근성 고려</h3>
                    <p>명확한 헤더 태그와 ARIA 레이블로 접근성을 신경썼습니다.</p>
                </article>

                <article class="card" tabindex="0">
                    <div class="tag pink">인터랙션</div>
                    <h3>색상 변경</h3>
                    <p>오른쪽 사이드바의 스와치를 클릭해 메인 색상을 바꿀 수 있습니다.</p>
                </article>

                <article class="card" tabindex="0">
                    <div class="tag purple">애니메이션</div>
                    <h3>간단한 애니메이션</h3>
                    <p>마우스 움직임으로 로고의 각도가 바뀌는 효과를 넣었습니다.</p>
                </article>
            </div>
        </section>

        <aside class="sidebar" aria-labelledby="controls">
            <h3 id="controls" style="margin-top:0">설정</h3>
            <p class="small">아래 버튼과 색상을 사용해 레이아웃을 꾸며보세요.</p>

            <div style="margin-top:0.6rem">
                <button class="btn accent" id="surprise">깜짝 색상 보기</button>
                <button class="btn ghost" id="reset" style="margin-left:0.6rem">초기화</button>
            </div>

            <div style="margin-top:1rem">
                <div class="small">컬러 스와치</div>
                <div class="color-row" aria-hidden="false">
                    <div class="swatch" title="해질녘" data-a1="#ff6b6b" data-a2="#ffb199" style="background:linear-gradient(180deg,#ff6b6b,#ffb199);"></div>
                    <div class="swatch" title="보라빛" data-a1="#5f27cd" data-a2="#b388ff" style="background:linear-gradient(180deg,#5f27cd,#b388ff);"></div>
                    <div class="swatch" title="바다빛" data-a1="#01a3a4" data-a2="#64f6ff" style="background:linear-gradient(180deg,#01a3a4,#64f6ff);"></div>
                    <div class="swatch" title="오렌지" data-a1="#ff7a00" data-a2="#ffd27f" style="background:linear-gradient(180deg,#ff7a00,#ffd27f);"></div>
                </div>
            </div>

            <div style="margin-top:1rem;display:flex;flex-direction:column;gap:0.6rem">
                <label class="small">로고 회전</label>
                <input type="range" id="tilt" min="-30" max="30" value="0">
            </div>

            <div style="margin-top:1rem;font-size:0.9rem;color:var(--muted)">
                <strong>팁:</strong> 카드에 포커스를 주면 키보드로도 탐색할 수 있습니다.
            </div>
        </aside>
    </main>

    <footer>
        <div class="small">이 예제는 초보 학습용입니다 — 수정 및 재사용 가능합니다.</div>
        <div class="small">작성자: ChatGPT • 간단한 인터랙션 포함</div>
    </footer>
</div>

<script>
    // DOM 요소 선택
    const root = document.documentElement;
    const swatches = document.querySelectorAll('.swatch');
    const surpriseBtn = document.getElementById('surprise');
    const resetBtn = document.getElementById('reset');
    const tilt = document.getElementById('tilt');
    const logo = document.querySelector('.logo');

    // 색상 변경 함수
    function applyPalette(a1, a2){
        // CSS 변수 업데이트
        document.documentElement.style.setProperty('--accent1', a1);
        document.documentElement.style.setProperty('--accent2', a2);
    }

    // 스와치 클릭 이벤트
    swatches.forEach(s => s.addEventListener('click', ()=>{
        applyPalette(s.dataset.a1, s.dataset.a2);
    }));

    // 깜짝 버튼: 무작위 색상
    surpriseBtn.addEventListener('click', ()=>{
        const palette = [
            ['#ff6b6b','#ffb199'],['#5f27cd','#b388ff'],['#01a3a4','#64f6ff'],['#ff7a00','#ffd27f'],
            ['#2dd4bf','#7efc9b'],['#ff4d6d','#ffd6e0']
        ];
        const pick = palette[Math.floor(Math.random()*palette.length)];
        applyPalette(pick[0], pick[1]);
    });

    // 초기화
    resetBtn.addEventListener('click', ()=>{
        applyPalette('#ff6b6b','#5f27cd');
        root.style.background = '';
    });

    // 로고 기울기 조절
    tilt.addEventListener('input', (e)=>{
        logo.style.transform = `rotate(${e.target.value}deg)`;
    });

    // 로고가 마우스 위치를 따라가며 살짝 기울어짐
    document.addEventListener('mousemove', (e)=>{
        const rect = logo.getBoundingClientRect();
        const cx = rect.left + rect.width/2;
        const cy = rect.top + rect.height/2;
        const dx = e.clientX - cx;
        const dy = e.clientY - cy;
        const max = 12;
        const rx = Math.max(-max, Math.min(max, dy/10));
        const ry = Math.max(-max, Math.min(max, dx/10));
        logo.style.transform = `rotateX(${rx}deg) rotateY(${ry}deg)`;
    });

    // 키보드 접근성: 카드에 포커스 시 그림자 강조
    document.querySelectorAll('.card').forEach(c=>{
        c.addEventListener('focus', ()=>c.style.boxShadow = '0 22px 48px rgba(12,12,35,0.18)');
        c.addEventListener('blur', ()=>c.style.boxShadow = '');
    });

    // 초기 색상 적용
    applyPalette('#ff6b6b','#5f27cd');
</script>
</body>
</html>
