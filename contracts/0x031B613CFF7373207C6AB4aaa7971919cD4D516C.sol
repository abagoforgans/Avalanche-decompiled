contract main {




// =====================  Runtime code  =====================


address _owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
address sub_9f570c90Address;
mapping of uint8 stor2;
uint256 round;
mapping of uint8 stor4;
mapping of uint256 sub_6d9dc7ee;
array of address sub_7d2026af;
uint256 sub_6329b4ba;
uint256 sub_f7d978bd;
uint256 sub_c9064ed0;
uint256 sub_54e3d132;

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

function sub_6329b4ba(?) payable {
    return sub_6329b4ba
}

function sub_6d9dc7ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d9dc7ee[arg1]
}

function sub_7d2026af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d2026af.length
    return address(sub_7d2026af[arg1])
}

function sub_8acd7bac(?) payable {
    return bool(uint8(stor1.field_160))
}

function sub_9f570c90(?) payable {
    return sub_9f570c90Address
}

function _owner() payable {
    return _owner
}

function sub_c9064ed0(?) payable {
    return sub_c9064ed0
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
    require msg.sender == _owner
    sub_f7d978bd = arg1
}

function changeMinInvestment(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    sub_6329b4ba = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    _owner = arg1
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
        revert with 0, 17
    return (sub_f7d978bd - sub_6d9dc7ee[address(arg1)])
}

function sub_ad42d37a(?) payable {
    staticcall sub_9f570c90Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f17386b3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require msg.sender == _owner
    if arg4 <= arg3:
        revert with 0, 'Incorrect max investment value'
    sub_9f570c90Address = address(arg1)
    sub_c9064ed0 = arg4
    sub_f7d978bd = arg3
    sub_6329b4ba = arg2
}

function sub_6d66d2ce(?) payable {
    require msg.sender == _owner
    if uint8(stor1.field_168):
        revert with 0, 'Cannot restart raise'
    uint8(stor1.field_160) = 1
    if 1 > -(0 or uint8(stor1.field_168) or 0) + 255:
        revert with 0, 17
    uint8(stor1.field_168) = uint8((0 or uint8(stor1.field_168) or 0) + 1)
}

function sub_64c6844f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == _owner
    staticcall sub_9f570c90Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call sub_9f570c90Address.0xa9059cbb with:
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
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require msg.sender == _owner
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function Investing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'Raise is not in progress'
    if not round:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'Not whitelisted address'
    if sub_54e3d132 > !arg1:
        revert with 0, 17
    if sub_c9064ed0 < sub_54e3d132 + arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target Achieved. Investment not accepted'
    if arg1 <= 0:
        revert with 0, 'min Investment not zero'
    if sub_6d9dc7ee[msg.sender] > !arg1:
        revert with 0, 17
    if sub_6d9dc7ee[msg.sender] + arg1 > sub_f7d978bd:
        revert with 0, 'Investment not in allowed range'
    if not stor4[msg.sender]:
        stor4[msg.sender] = 1
        sub_7d2026af.length++
        uint256(sub_7d2026af[sub_7d2026af.length]) = msg.sender or Mask(96, 160, uint256(sub_7d2026af[sub_7d2026af.length]))
    if sub_6d9dc7ee[msg.sender] > !arg1:
        revert with 0, 17
    sub_6d9dc7ee[msg.sender] += arg1
    if sub_54e3d132 > !arg1:
        revert with 0, 17
    sub_54e3d132 += arg1
    call sub_9f570c90Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
