<%-- 
    Document   : nhap
    Created on : Nov 1, 2023, 11:30:18 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-popup" id="myForm" style="height: 400px">
            <form action="add" class="form-container" style="padding: 10px" method="post" >
                <h1 style="text-align: center;color: #0033ff" >New Car</h1>
                <div style="display: inline-flex; flex-direction: column;width: 100%">
                    <div>
                        <label><b>Car Name: </b></label>
                        <input style="width: 30%" type="text" name="carname" required>
                        <label style="justify-content: center;padding-left: 17%"><b>Rental Price Per Day: </b></label>
                        <input type="text" name="price" style="width: 30%" required>
                    </div>

                </div>
                <div style="width: 100%;text-align: center">
                    <div style="display: inline-flex;flex-direction: row;width: 100%;;text-align: center">
                        <label style="justify-content: center;line-height: 60px;padding-right: 13px"><b>Car Type: </b></label>
                        <select name="cartype" class="form-select" aria-label="Default select example" style="width: 30%;height: 54px">
                            <c:forEach items="" var="o">
                                <!-- options la value cua the select -->
                                <option value="" style=""></option>
                            </c:forEach>
                        </select>
                        <label style="justify-content: center;line-height: 60px;padding-left: 18%;padding-right:12px"><b>Manufacture Year: </b></label>
                        <input type="text" name="year" style="width: 30%" required>
                    </div>
                </div>
                <div style="display: inline-flex; flex-direction: column;width: 100%">
                    <div style="width: 100% ">
                        <label style="padding-right: 30px"><b>Image:</b></label>
                        <input name="image" type="text" style="width: 30%" >
                        <label style="padding-left: 18%;padding-right:9px"><b>Some Description: </b></label>
                        <input type="text" name="description" style="width: 30%">
                    </div>
                </div>
                <div style="display: flex;margin: 0;position: absolute;width: 99%;justify-content: center">
                    <!-- Buttons at the bottom -->
                    <button type="submit" class="btn" style="width: 40%">Add</button>
                    <button type="button" class="btn cancel" onclick="" style="width: 39%">Close</button>
                </div>
            </form>
        </div>
    </body>
</html>
