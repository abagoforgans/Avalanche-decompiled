contract main {




// =====================  Runtime code  =====================


address owner;
address slaveAddress;
address stor2;
uint256 stor3; offset 1
uint256 stor3;

function owner() {
    return owner
}

function slave() {
    return slaveAddress
}

function _fallback() payable {
  stop
}

function sub_a4de6290(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).balance0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).balance1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).liquidity() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(address(arg1))
    staticcall address(arg1).slot0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool((6 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ('signextend', 2, ('ext_call.return_data', 32, 32))
    require ext_call.return_data[64] == ext_call.return_data[94 len 2]
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 128, address(ext_call.return_data[0])
}

function run() {
    require msg.sender == owner
    if eth.balance(owner) >= uint255(stor3.field_1):
        if eth.balance(slaveAddress) >= uint255(stor3.field_1):
            return 0
        if uint256(stor3.field_0) < eth.balance(slaveAddress):
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), uint256(stor3.field_0) - eth.balance(slaveAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x2e1a7d4d with:
             gas gas_remaining wei
            args (uint256(stor3.field_0) - eth.balance(slaveAddress))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call slaveAddress with:
           value uint256(stor3.field_0) - eth.balance(slaveAddress) wei
             gas 2300 * is_zero(value) wei
        if 0 > -uint256(stor3.field_0) + eth.balance(slaveAddress) - 1:
            revert with 'NH{q', 17
        return (uint256(stor3.field_0) - eth.balance(slaveAddress))
    if uint256(stor3.field_0) < eth.balance(owner):
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), uint256(stor3.field_0) - eth.balance(owner)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (uint256(stor3.field_0) - eth.balance(owner))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value uint256(stor3.field_0) - eth.balance(owner) wei
         gas 2300 * is_zero(value) wei
    if 0 > -uint256(stor3.field_0) + eth.balance(owner) - 1:
        revert with 'NH{q', 17
    if eth.balance(slaveAddress) >= uint255(stor3.field_1):
        if uint256(stor3.field_0) - eth.balance(owner) > -1:
            revert with 'NH{q', 17
        return (uint256(stor3.field_0) - eth.balance(owner))
    if uint256(stor3.field_0) < eth.balance(slaveAddress):
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), uint256(stor3.field_0) - eth.balance(slaveAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (uint256(stor3.field_0) - eth.balance(slaveAddress))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call slaveAddress with:
       value uint256(stor3.field_0) - eth.balance(slaveAddress) wei
         gas 2300 * is_zero(value) wei
    if uint256(stor3.field_0) - eth.balance(owner) > -uint256(stor3.field_0) + eth.balance(slaveAddress) - 1:
        revert with 'NH{q', 17
    return ((2 * uint256(stor3.field_0)) - eth.balance(owner) - eth.balance(slaveAddress))
}



}
