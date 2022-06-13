contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 totalRewards;
uint256 stor3;
mapping of address referrer;
mapping of struct userInfo;
mapping of uint8 stor6;

function totalRewards() payable {
    return totalRewards
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function referrer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrer[arg1]
}

function getUserInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0, userInfo[address(arg1)].field_256, userInfo[address(arg1)].field_512
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_625f3267(?) payable {
    referrer[address(msg.sender)] = 0
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_1c505d1d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor1[address(msg.sender)]
    if address(arg2):
        if address(arg2) != referrer[address(arg1)]:
            referrer[address(arg1)] = address(arg2)
            if not stor6[address(arg2)][address(arg1)]:
                stor6[address(arg2)][address(arg1)] = 1
                if userInfo[address(arg2)].field_0 == -1:
                    revert with 'NH{q', 17
                userInfo[address(arg2)].field_0++
        emit Referral(address(arg1), address(arg2));
}

function claimRewards() payable {
    if userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    require userInfo[address(msg.sender)].field_256 - userInfo[address(msg.sender)].field_512 > 0
    require ext_code.size(0xb09fe1613fe03e7361319d2a43edc17422f36b09)
    call 0xb09fe1613fe03e7361319d2a43edc17422f36b09.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(msg.sender)].field_256 - userInfo[address(msg.sender)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)].field_512 > -userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_256
    require ext_code.size(0xb09fe1613fe03e7361319d2a43edc17422f36b09)
    staticcall 0xb09fe1613fe03e7361319d2a43edc17422f36b09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor3 = ext_call.return_data[0]
}

function sub_e8a19fdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor1[address(msg.sender)]
    require ext_code.size(0xb09fe1613fe03e7361319d2a43edc17422f36b09)
    staticcall 0xb09fe1613fe03e7361319d2a43edc17422f36b09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor3:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_256 > -ext_call.return_data[0] + stor3 - 1:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_256 + ext_call.return_data[0] - stor3
    if totalRewards > -ext_call.return_data[0] + stor3 - 1:
        revert with 'NH{q', 17
    totalRewards = totalRewards + ext_call.return_data[0] - stor3
    require ext_code.size(0xb09fe1613fe03e7361319d2a43edc17422f36b09)
    staticcall 0xb09fe1613fe03e7361319d2a43edc17422f36b09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor3 = ext_call.return_data[0]
}



}
