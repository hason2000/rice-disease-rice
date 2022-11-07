$("#question-signals-button").on("click", function (e) {
    var form = $("#form_question_disease");
    var actionForm = form.attr("action");
    $.ajax({
        type: "POST",
        url: actionForm,
        data: form.serialize(),
        success: function (data) {
            let statusContinueQuestion = data[0].statusContinueQuestion;
            if (statusContinueQuestion == 1) {
                $("div#predict-disease").remove();
                console.log(document.getElementsByClassName("custom-select"));
                let classSelect =
                    document.getElementsByClassName("custom-select");
                console.log(classSelect[0].options.selectedIndex);
                for (let i = 0; i < classSelect.length; i++) {
                    for (let j = 0; j < classSelect[i].options.length; j++) {
                        if (j == classSelect[i].options.selectedIndex) {
                            classSelect[i].options[j].setAttribute(
                                "selected",
                                true
                            );
                        }
                        else
                            classSelect[i].options[j].setAttribute(
                                "disabled",
                                true
                            );
                    }
                }
                let nextSignalNameTranfer =
                    data[0].nextSignalNameTranfer.split(":");
                let arrayValSignalName = data[0].arrayValSignalName;
                let contentOption = ``;
                for (let i = 0; i < arrayValSignalName.length; i++) {
                    let text = arrayValSignalName[i].split(":");
                    contentOption +=
                        `<option value="` +
                        text[0] +
                        `">` +
                        text[1] +
                        `</option>
                        `;
                }
                let htmlContent =
                    `
                <div class="form-group">
                    <label for="formGroupExampleInput" class="custom-label">` +
                    nextSignalNameTranfer[1] +
                    `</label>
                    <select class="custom-select custom-select-lg mb-3" name="` +
                    nextSignalNameTranfer[0] +
                    `">
                        ` +
                    contentOption +
                    `
                        <option value="null">Khác</option>
                    </select>
                </div>
                `;
                document
                    .getElementById("form_question_disease")
                    .insertAdjacentHTML("beforeend", htmlContent);
                if (data[0].diseasesPredict.length > 0) {
                    let predict = document.getElementById("predict-disease");
                    if (predict) {
                        predict.innerHTML = ``;
                    }
                    let diseasesPredict = data[0].diseasesPredict;
                    let aContent = ``;
                    for (let i = 0; i < diseasesPredict.length; i++) {
                        let text = diseasesPredict[i].split(":");
                        aContent +=
                            `
                            <div class="alert alert-secondary" role="alert" style="margin-top: 20px; width: 60%; margin: 20px auto 0 auto">
                                <a href="http://127.0.0.1:9000/diseases/` + text[0] +`">`+ text[1] +`</a>
                            </div>
                            <br>
                        `;
                    }
                    let htmlContent =
                        `
                    <div class="result-form mt-5 ml-4" id="predict-disease">
                        <h3 class="text-center">Hệ Thống Chẩn Đoán:</h3>
                        ` +
                        aContent +
                        `
                    </div>
                    `;
                    document
                        .getElementById("content-right")
                        .insertAdjacentHTML("beforeend", htmlContent);
                }
            } else {
                $('button#question-signals-button').remove();
                $('div#predict-disease').remove();
                let predict = document.getElementById("predict-disease");
                if (predict) {
                    predict.innerHTML = ``;
                }
                $diseasesPredict = data[0].diseasesPredict;
                if ($diseasesPredict.length == 0) {
                    let htmlContent = `
                    <div class="result-form mt-5 ml-4" id="predict-disease">
                        <h3 class="text-center">Hệ Thống Chẩn Đoán:</h3>
                        <span>Không có bệnh phù hợp</span>
                    </div>
                    `;
                    document
                        .getElementById("content-right")
                        .insertAdjacentHTML("beforeend", htmlContent);
                } else {
                    let predict = document.getElementById("predict-disease");
                    if (predict) {
                        predict.innerHTML = ``;
                    }
                    let diseasesPredict = data[0].diseasesPredict;
                    let aContent = ``;
                    for (let i = 0; i < diseasesPredict.length; i++) {
                        let text = diseasesPredict[i].split(":");
                        aContent +=
                            `
                            <div class="alert alert-secondary" role="alert" style="margin-top: 20px; width: 60%; margin: 20px auto 0 auto">
                                <a href="http://127.0.0.1:9000/diseases/`+ text[0] +`">`+ text[1] +`</a>
                            </div>
                            <br>
                        `;
                    }
                    let htmlContent =
                        `
                    <div class="result-form mt-5 ml-4" id="predict-disease">
                        <h3 class="text-center">Hệ Thống Chẩn Đoán:</h3>
                        ` +
                        aContent +
                        `
                    </div>
                    `;
                    document
                        .getElementById("content-right")
                        .insertAdjacentHTML("beforeend", htmlContent);
                }
                console.log("truong hop dung cau hoi");
            }
        },
    });
});

$("#question-signals-button-reset").on("click", function (e) {
    location.reload();
});

