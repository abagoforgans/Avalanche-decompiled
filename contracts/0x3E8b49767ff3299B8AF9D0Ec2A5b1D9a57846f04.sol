contract main {




// =====================  Runtime code  =====================


address _owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 160
address inputTokenAddress;
mapping of uint8 stor2;
uint256 round;
mapping of uint8 stor4;
mapping of uint256 sub_6d9dc7ee;
array of address sub_7d2026af;
uint256 minInvestment;
uint256 sub_f7d978bd;
uint256 sub_c9064ed0;
uint256 sub_54e3d132;

function sub_107820e4(?) payable {
    return sub_c9064ed0
}

function round() payable {
    return round
}

function checkWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function sub_536b2255(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_54e3d132(?) payable {
    return sub_54e3d132
}

function sub_59baf5fa(?) payable {
    return sub_f7d978bd
}

function sub_6329b4ba(?) payable {
    return minInvestment
}

function sub_6d9dc7ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d9dc7ee[arg1]
}

function getMinInvestment() payable {
    return minInvestment
}

function sub_7d2026af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7d2026af.length
    return sub_7d2026af[arg1]
}

function sub_8acd7bac(?) payable {
    return bool(uint8(stor1.field_160))
}

function sub_9f570c90(?) payable {
    return inputTokenAddress
}

function _owner() payable {
    return _owner
}

function sub_c9064ed0(?) payable {
    return sub_c9064ed0
}

function getInputToken() payable {
    return inputTokenAddress
}

function sub_f7d978bd(?) payable {
    return sub_f7d978bd
}

function _fallback() payable {
    revert
}

function startNormalRound() payable {
    require msg.sender == _owner
    round = 1
}

function startWhitelistingRound() payable {
    require msg.sender == _owner
    round = 0
}

function sub_5e28bc83(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    sub_f7d978bd = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    _owner = arg1
}

function changeMinInvestment(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    minInvestment = arg1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    stor2[address(arg1)] = 0
}

function remainigContribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_f7d978bd < sub_6d9dc7ee[address(arg1)]:
        revert with 'NH{q', 17
    return (sub_f7d978bd - sub_6d9dc7ee[address(arg1)])
}

function sub_6d66d2ce(?) payable {
    require msg.sender == _owner
    if uint8(stor1.field_168):
        revert with 0, 'Cannot restart raise'
    Mask(96, 0, stor1.field_160) = 1
    if uint8(stor1.field_168) > 254:
        revert with 'NH{q', 17
    uint8(stor1.field_168) = uint8(uint8(stor1.field_168) + 1)
}

function sub_f17386b3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require msg.sender == _owner
    if arg4 <= arg3:
        revert with 0, 'Incorrect maxinvestment value'
    inputTokenAddress = address(arg1)
    sub_c9064ed0 = arg4
    sub_f7d978bd = arg3
    minInvestment = arg2
}

function sub_ad42d37a(?) payable {
    require ext_code.size(inputTokenAddress)
    staticcall inputTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_64c6844f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == _owner
    require ext_code.size(inputTokenAddress)
    staticcall inputTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(inputTokenAddress)
    call inputTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == _owner
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function Investing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'Raise is not in progress'
    if not round:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0, 'Not whitelisted address'
    if sub_54e3d132 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_c9064ed0 < sub_54e3d132 + arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target Achieved. Investment not accepted'
    if arg1 <= 0:
        revert with 0, 'min Investment not zero'
    if sub_6d9dc7ee[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_6d9dc7ee[address(msg.sender)] + arg1 > sub_f7d978bd:
        revert with 0, 'Investment not in allowed range'
    if not stor4[address(msg.sender)]:
        stor4[address(msg.sender)] = 1
        sub_7d2026af.length++
        sub_7d2026af[sub_7d2026af.length] = msg.sender
    if sub_6d9dc7ee[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_6d9dc7ee[address(msg.sender)] += arg1
    if sub_54e3d132 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_54e3d132 += arg1
    require ext_code.size(inputTokenAddress)
    call inputTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
