contract main {




// =====================  Runtime code  =====================


const epochLength = (168 * 24 * 3600)


uint256 sub_d172e995;
uint8 stor1;
address sub_40fa6d2dAddress; offset 8
mapping of address sub_725f162d;
mapping of uint8 stor3;

function sub_04986914(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function started() payable {
    return bool(stor1)
}

function sub_40fa6d2d(?) payable {
    return sub_40fa6d2dAddress
}

function sub_725f162d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(24, 232, arg1)
    return sub_725f162d[arg1]
}

function sub_d172e995(?) payable {
    return sub_d172e995
}

function _fallback() payable {
    revert
}

function currentEpoch() payable {
    if block.timestamp < sub_d172e995:
        return 0
    if block.timestamp - sub_d172e995 / 168 * 24 * 3600 > -2:
        revert with 'NH{q', 17
    return uint16((block.timestamp - sub_d172e995 / 168 * 24 * 3600) + 1)
}

function sub_d336dc02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_40fa6d2dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'onlyExecutive(): only the assigned executive can call the function'
    sub_40fa6d2dAddress = address(arg1)
}

function sub_23c264d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_40fa6d2dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'onlyExecutive(): only the assigned executive can call the function'
    if stor3[address(arg1)]:
        revert with 0, 'Policy is already installed'
    stor3[address(arg1)] = 1
}

function sub_90115f15(?) payable {
    if stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cannot setStartingEpoch(): operator is already started'
    if block.timestamp / 168 * 24 * 3600 > -2:
        revert with 'NH{q', 17
    if (block.timestamp / 168 * 24 * 3600) + 1 and 168 * 24 * 3600 > -1 / (block.timestamp / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    sub_d172e995 = (168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600) + (168 * 24 * 3600)
    stor1 = 1
}

function sub_5caec1ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_40fa6d2dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'onlyExecutive(): only the assigned executive can call the function'
    staticcall address(arg1).0x1ae7ec2e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(24, 232, ext_call.return_data[0])
    if sub_725f162d[Mask(24, 232, ext_call.return_data[0])]:
        revert with 0, 'Existing system already present'
    staticcall address(arg1).0x1ae7ec2e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(24, 232, ext_call.return_data[0])
    sub_725f162d[Mask(24, 232, ext_call.return_data[0])] = address(arg1)
}



}
