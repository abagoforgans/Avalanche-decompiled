contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ef929f92Address;
address treasuryAddress;
address landAddress;
address sub_0e78b86dAddress;
address sub_c69e4b6eAddress;
mapping of uint256 sub_33aeaf31;
uint256 salary;
uint256 sub_e595d6aa;
uint256 sub_50ded36f;
uint256 sub_59147001;
uint256 sub_bc77ac0d;

function salary() payable {
    return salary
}

function sub_0e78b86d(?) payable {
    return sub_0e78b86dAddress
}

function sub_2d49c359(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_33aeaf31[arg1][arg2]
}

function sub_33aeaf31(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_33aeaf31[arg1][arg2]
}

function sub_50ded36f(?) payable {
    return sub_50ded36f
}

function sub_59147001(?) payable {
    return sub_59147001
}

function treasury() payable {
    return treasuryAddress
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_bc77ac0d(?) payable {
    return sub_bc77ac0d
}

function sub_c69e4b6e(?) payable {
    return sub_c69e4b6eAddress
}

function sub_e595d6aa(?) payable {
    return sub_e595d6aa
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_72ef9b68(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    salary = arg1
    sub_e595d6aa = arg2
    sub_50ded36f = arg3
}

function sub_545c6783(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_33aeaf31[arg1][arg2]:
        return 0
    if block.timestamp < sub_33aeaf31[arg1][arg2]:
        revert with 'NH{q', 17
    return block.timestamp - sub_33aeaf31[arg1][arg2] >= sub_bc77ac0d
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6322b513(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_59147001 = 3
    sub_0e78b86dAddress = address(arg4)
    sub_c69e4b6eAddress = address(arg5)
    landAddress = address(arg2)
    treasuryAddress = address(arg3)
    sub_ef929f92Address = address(arg1)
    sub_bc77ac0d = arg6
    salary = arg7
    sub_e595d6aa = arg8
    sub_50ded36f = arg9
}

function harvest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if not sub_33aeaf31[arg1][arg2]:
        revert with 0, 'Can not harvest.'
    if block.timestamp < sub_33aeaf31[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_33aeaf31[arg1][arg2] < sub_bc77ac0d:
        revert with 0, 'Can not harvest.'
    sub_33aeaf31[arg1][arg2] = 0
    require ext_code.size(sub_c69e4b6eAddress)
    call sub_c69e4b6eAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, sub_50ded36f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Harvest(sub_50ded36f, msg.sender, arg1, arg2);
}

function sub_95dc130e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if sub_33aeaf31[arg1][arg2]:
        revert with 0, 'This mine is working.'
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x6e6bbb39 with:
         gas gas_remaining wei
        args msg.sender, salary
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0e78b86dAddress)
    call sub_0e78b86dAddress.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, sub_e595d6aa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_33aeaf31[arg1][arg2] = block.timestamp
    emit 0x41024bd1: msg.sender, arg1, arg2
}



}
