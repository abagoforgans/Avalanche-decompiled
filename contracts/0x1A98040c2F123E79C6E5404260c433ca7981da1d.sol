contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor2;
mapping of struct _contributions;
mapping of uint8 stor4;
uint256 sub_970891e1;
address sub_7e408b99Address;
address sub_df842386Address;
uint256 sub_152a645f;
address sub_e2413c0aAddress;
uint256 sub_df3c853a;
address _burnAddress;
address _treasuryAddress;
uint256 sub_eedaa436;
uint256 sub_bb489347;
uint256 sub_e3c536af;
uint8 sub_4af68b10;
uint8 sub_254bf691; offset 8
uint256 stor16; offset 8
uint256 stor16;

function sub_152a645f(?) payable {
    return sub_152a645f
}

function isContributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _contributions(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[arg1].field_0, _contributions[arg1].field_256, _contributions[arg1].field_512
}

function sub_254bf691(?) payable {
    return bool(sub_254bf691)
}

function sub_4af68b10(?) payable {
    return bool(sub_4af68b10)
}

function sub_7e408b99(?) payable {
    return sub_7e408b99Address
}

function owner() payable {
    return owner
}

function sub_970891e1(?) payable {
    return sub_970891e1
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_bb489347(?) payable {
    return sub_bb489347
}

function _burnAddress() payable {
    return _burnAddress
}

function sub_df3c853a(?) payable {
    return sub_df3c853a
}

function sub_df842386(?) payable {
    return sub_df842386Address
}

function sub_e2413c0a(?) payable {
    return sub_e2413c0aAddress
}

function _treasury() payable {
    return _treasuryAddress
}

function sub_e3c536af(?) payable {
    return sub_e3c536af
}

function sub_eedaa436(?) payable {
    return sub_eedaa436
}

function _fallback() payable {
    revert
}

function presaleEnd() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eedaa436 = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function sub_fc0f5b41(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_eedaa436:
        revert with 0, 'PRESALE: NOT FINISHED YET'
    Mask(248, 0, stor16.field_8) = Mask(248, 0, not sub_254bf691)
}

function endPresale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_eedaa436:
        revert with 0, 'PRESALE: NOT FINISHED YET'
    uint256(stor16.field_0) = not sub_4af68b10 or Mask(248, 8, uint256(stor16.field_0))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1a52cd27(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4af68b10 = 1
    sub_7e408b99Address = address(arg1)
    sub_df842386Address = address(arg2)
    sub_152a645f = arg3
    sub_e2413c0aAddress = address(arg4)
    sub_df3c853a = arg5
    if not address(arg6):
        revert with 0, 'PRESALE: TREASURY ZERO ADDRESS'
    _treasuryAddress = address(arg6)
    if 72 * 24 * 3600 > !block.timestamp:
        revert with 'NH{q', 17
    sub_eedaa436 = block.timestamp + (72 * 24 * 3600)
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 5000:
        revert with 0, 'jesus, too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function burnToken() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_4af68b10:
        revert with 0, 'PRESALE: NOT FINISHED YET'
    if sub_254bf691:
        revert with 0, 'PRESALE: WITHDRAW ERROR'
    require ext_code.size(sub_df842386Address)
    staticcall sub_df842386Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_df842386Address)
    call sub_df842386Address.0xa9059cbb with:
         gas gas_remaining wei
        args _burnAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_4af68b10:
        revert with 0, 'PRESALE: NOT STARTED YET'
    if not stor2[msg.sender]:
        revert with 0, 'PRESALE: INVESTOR NOT WHITELIST'
    if arg1 < 1:
        revert with 0, 'PRESALE: INVALID INVEST TYPE'
    if arg1 > 5:
        revert with 0, 'PRESALE: INVALID INVEST TYPE'
    require ext_code.size(sub_e2413c0aAddress)
    staticcall sub_e2413c0aAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^18 * arg1:
        revert with 0, 'PRESALE: INVEST BALANCE ERROR'
    if stor4[msg.sender]:
        revert with 0, 'PRESALE: HAVE ALREADY PURCHASED TOKEN'
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    require ext_code.size(sub_df842386Address)
    staticcall sub_df842386Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
        revert with 'NH{q', 17
    if 10 * 10^18 * 2 * arg1 > ext_call.return_data[0]:
        revert with 0, 'PRESALE: INSUFFICIENT BALANCE'
    if 2 * arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
        revert with 'NH{q', 17
    if arg1 > 0x2f394219248446baa23d2ec729af3d610607aa0167dd94ca:
        revert with 'NH{q', 17
    require ext_code.size(sub_e2413c0aAddress)
    call sub_e2413c0aAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _treasuryAddress, 100 * 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_df842386Address)
    call sub_df842386Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10 * 10^18 * 2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4[msg.sender] = 1
    if arg1 > 0x2f394219248446baa23d2ec729af3d610607aa0167dd94ca:
        revert with 'NH{q', 17
    if sub_bb489347 > !(100 * 10^18 * arg1):
        revert with 'NH{q', 17
    sub_bb489347 += 100 * 10^18 * arg1
    if 2 * arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
        revert with 'NH{q', 17
    if sub_e3c536af > !(10 * 10^18 * 2 * arg1):
        revert with 'NH{q', 17
    sub_e3c536af += 10 * 10^18 * 2 * arg1
    idx = 0
    while idx < 2 * arg1:
        mem[(6 * ceil32(return_data.size)) + 96] = 0x4f306a8300000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 132] = 96
        mem[(6 * ceil32(return_data.size)) + 196] = 20
        mem[(6 * ceil32(return_data.size)) + 228] = 'Presale Airdrop Node'
        mem[(6 * ceil32(return_data.size)) + 164] = sub_970891e1
        require ext_code.size(sub_7e408b99Address)
        call sub_7e408b99Address.0x4f306a83 with:
             gas gas_remaining wei
            args msg.sender, Array(len=20, data='Presale Airdrop Node'), sub_970891e1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
