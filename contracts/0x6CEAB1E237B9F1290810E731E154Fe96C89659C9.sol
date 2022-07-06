contract main {




// =====================  Runtime code  =====================


address mimAddress;
address spawnAddress;
address stor2;
address stor3;
address stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 stor8;
uint256 sub_41239dd4;
uint256 maxBuy;
uint256 sub_6fc07e83;
uint8 stor12;

function sub_41239dd4(?) payable {
    return sub_41239dd4
}

function isWhitelisted() payable {
    return bool(stor6[msg.sender])
}

function sub_6fc07e83(?) payable {
    return sub_6fc07e83
}

function maxBuy() payable {
    return maxBuy
}

function whiteListAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function mim() payable {
    return mimAddress
}

function spawn() payable {
    return spawnAddress
}

function sub_bc74dae6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function sub_14058ba2(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, '!Admin: caller is not a admin!'
    sub_41239dd4 = arg1
}

function setWhitelistOnly(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, '!Admin: caller is not a admin!'
    stor12 = uint8(arg1)
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, '!Admin: caller is not a admin!'
    if msg.sender == arg1:
        revert with 0, 'Admin: You are already an admin!'
    stor5[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, '!Admin: caller is not a admin!'
    if stor2 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4552524f523a20596f752063616e6e6f742072656d6f766520636f6e7472616374206f776e65722061732061646d696e,
                    mem[213 len 15]
    stor5[address(arg1)] = 0
}

function sub_bf234202(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor2 != msg.sender:
        revert with 0, 'Owner: caller is not a owner!'
    if ('cd', 4).length >= 500:
        revert with 0, 'ERROR: Too many in one tx'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function withdraw() payable {
    if stor2 != msg.sender:
        revert with 0, 'Owner: caller is not a owner!'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mimAddress)
    call mimAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a7e843fa(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'ERROR: Not the TF token hodler!'
    if stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e4552524f523a20537061776e20616c726561647920636c61696d656420666f7220746869732066726f67,
                    mem[207 len 21]
    require ext_code.size(spawnAddress)
    staticcall spawnAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_6fc07e83:
        revert with 0, 'ERROR: Not enough token'
    stor7[arg1] = 1
    require ext_code.size(spawnAddress)
    call spawnAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_6fc07e83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(spawnAddress)
    staticcall spawnAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor8[msg.sender] >= maxBuy:
        revert with 0, 'ERROR: Max 5,000 in presale!'
    if stor12:
        if bool(stor6[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6e4552524f523a20596f7520617265206e6f742070617274206f6620746865207768697465206c697374,
                        mem[206 len 22]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 * sub_41239dd4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4552524f523a204e6f7420617070726f76656420746f207370656e6420656e6f75676820746f6b6500,
                    mem[205 len 23]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 * sub_41239dd4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4552524f523a204e6f7420617070726f76656420746f207370656e6420656e6f75676820746f6b6500,
                    mem[205 len 23]
    if ext_call.return_data[0] < 10^9 * arg1:
        revert with 0, 'ERROR: Not enough tokens left'
    if arg1 > maxBuy:
        revert with 0, 'ERROR: Max buy is 5,000'
    require ext_code.size(mimAddress)
    call mimAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor3, arg1 * sub_41239dd4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(spawnAddress)
    call spawnAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^9 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8[msg.sender] += arg1
}



}
