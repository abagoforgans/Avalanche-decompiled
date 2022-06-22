contract main {




// =====================  Runtime code  =====================


#
#  - sub_8e0ec39b(?)
#  - sub_e38456a8(?)
#
uint256 stor0;
array of uint256 stor1;
address tokenAddress;
address stor3;
uint8 stor4; offset 160
address adminAddress;
address sellerAddress;
uint256 sub_cf97f742;
uint256 price;
uint256 sub_a897598a;
uint256 sub_a943dc8b;
uint256 sub_2f59a2a8;
mapping of struct sub_26fe433d;
array of address sub_4dd5aa97;

function seller() payable {
    return sellerAddress
}

function sub_1cf5fba6(?) payable {
    return bool(stor4)
}

function sub_26fe433d(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_26fe433d[arg1][1].field_0
    idx = 128
    s = 0
    while sub_26fe433d[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_26fe433d[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(sub_26fe433d[arg1].field_0)), 
           Array(len=sub_26fe433d[arg1][1].length, data=mem[128 len sub_26fe433d[arg1][1].length]),
           address(sub_26fe433d[arg1].field_512),
           sub_26fe433d[arg1].field_768,
           sub_26fe433d[arg1].field_1024,
           sub_26fe433d[arg1].field_1280,
           sub_26fe433d[arg1].field_1536,
           sub_26fe433d[arg1].field_1792
}

function sub_2f59a2a8(?) payable {
    return sub_2f59a2a8
}

function sub_4dd5aa97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4dd5aa97.length
    return sub_4dd5aa97[arg1]
}

function stableCoin() payable {
    return address(stor1.length)
}

function price() payable {
    return price
}

function sub_a897598a(?) payable {
    return sub_a897598a
}

function sub_a943dc8b(?) payable {
    return sub_a943dc8b
}

function sub_cf97f742(?) payable {
    return sub_cf97f742
}

function admin() payable {
    return adminAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_ee534083(?) payable {
    if sub_2f59a2a8 == sub_a897598a:
        return ''
    require sub_a943dc8b + sub_2f59a2a8 >= sub_2f59a2a8
    if sub_a943dc8b + sub_2f59a2a8:
        return ''
    return ''
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function changeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654f6e6c792061646d696e20697320616c6c6f776564206973207472616e7366657220746f6b656e,
                    mem[204 len 24]
    stor3 = arg1
    return 1
}

function sellTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor0++
    if adminAddress != msg.sender:
        revert with 0, 'Sender must be admin'
    if stor4:
        revert with 0, 'Sell cannot be placed twice'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sellerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_a897598a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x55736572204d75737420486176652042616c616e63652047726561746572206f7220457175616c20746f2053656c6c20416d6f756e00,
                    mem[218 len 10]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe507269636520616e64205175616e74697479206d7573742062652067726561746572207468616e207a6572,
                    mem[208 len 20]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe507269636520616e64205175616e74697479206d7573742062652067726561746572207468616e207a6572,
                    mem[208 len 20]
    price = arg1
    sub_a897598a = arg2
    sub_2f59a2a8 = arg2
    stor4 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args sellerAddress, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.addFromExchange(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sellerAddress, sub_a897598a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensSold(arg2, arg1, sellerAddress, tokenAddress);
    require stor0 + 1 == stor0
}

function sub_1b504ae3(?) payable {
    if not uint8(sub_26fe433d[msg.sender].field_0):
        revert with 0, 'Buyer haven't any active Counter'
    idx = 128
    s = 0
    while sub_26fe433d[msg.sender][1].length + 96 > idx:
        mem[idx + 32] = sub_26fe433d[msg.sender][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_26fe433d[msg.sender][1].length <= 5:
        idx = 0
        while idx < sub_26fe433d[msg.sender][1].length:
            require idx < 5
            require idx < sub_26fe433d[msg.sender][1].length
            require idx < 5
            require idx < sub_26fe433d[msg.sender][1].length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 5:
            require idx < 5
            require idx < sub_26fe433d[msg.sender][1].length
            require idx < 5
            require idx < sub_26fe433d[msg.sender][1].length
            idx = idx + 1
            continue 
    if sub_26fe433d[msg.sender][1].length < 5:
        revert with 0, 'Buyer haven't any active Counter'
    if sub_26fe433d[msg.sender][1].length > 5:
        revert with 0, 'Buyer haven't any active Counter'
    if 1 < sub_26fe433d[msg.sender].field_1280:
        require sub_26fe433d[msg.sender].field_1536 <= sub_a943dc8b
        sub_a943dc8b -= sub_26fe433d[msg.sender].field_1536
        require sub_26fe433d[msg.sender].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
        sub_2f59a2a8 += sub_26fe433d[msg.sender].field_1536
    uint8(sub_26fe433d[msg.sender].field_0) = 0
    bool(sub_26fe433d[msg.sender].field_256) = 0
    uint255(sub_26fe433d[msg.sender].field_257) = 0
    Mask(248, 0, sub_26fe433d[msg.sender].field_264) = mem[ceil32(sub_26fe433d[msg.sender][1].length) + 224 len 31]
    idx = 0
    while sub_26fe433d[msg.sender][1].length + 31 / 32 > idx:
        sub_26fe433d[msg.sender][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_26fe433d[msg.sender].field_1280 = 0
    if not sub_26fe433d[msg.sender].field_1536:
        require ext_code.size(address(stor1.length))
        call address(stor1.length).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(sub_26fe433d[msg.sender].field_512), 0
    else:
        require sub_26fe433d[msg.sender].field_768 * sub_26fe433d[msg.sender].field_1536 / sub_26fe433d[msg.sender].field_1536 == sub_26fe433d[msg.sender].field_768
        require ext_code.size(address(stor1.length))
        call address(stor1.length).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(sub_26fe433d[msg.sender].field_512), sub_26fe433d[msg.sender].field_768 * sub_26fe433d[msg.sender].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7405a1d9: sub_26fe433d[msg.sender].field_1536, sub_26fe433d[msg.sender].field_768, address(sub_26fe433d[msg.sender].field_512), tokenAddress
}

function cancelContract() payable {
    if sellerAddress != msg.sender:
        revert with 0, 'Only Seller Can Cancell Order'
    if sub_2f59a2a8 == sub_a897598a:
        idx = 0
        while idx < 4:
            require idx < 9
            require idx < 4
            require idx < 9
            require idx < 4
            idx = idx + 1
            continue 
    else:
        require sub_a943dc8b + sub_2f59a2a8 >= sub_2f59a2a8
        if not sub_a943dc8b + sub_2f59a2a8:
            idx = 0
            while idx < 9:
                require idx < 9
                require idx < 9
                require idx < 9
                require idx < 9
                idx = idx + 1
                continue 
            revert with 0, 'This Order is Completed'
        idx = 0
        while idx < 7:
            require idx < 9
            require idx < 7
            require idx < 9
            require idx < 7
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < sub_4dd5aa97.length:
        mem[0] = sub_4dd5aa97[idx]
        mem[32] = 14
        if not uint8(sub_26fe433d[stor15[idx]].field_0):
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < sub_4dd5aa97.length
        if not sub_26fe433d[stor15[idx]].field_1536:
            require idx < sub_4dd5aa97.length
            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
            mem[32] = 14
            sub_26fe433d[stor15[idx]].field_1280 = 0
            mem[228] = address(sub_26fe433d[stor15[idx]].field_512)
            mem[260] = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[stor15[idx]].field_512), 0
        else:
            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
            require idx < sub_4dd5aa97.length
            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
            mem[32] = 14
            sub_26fe433d[stor15[idx]].field_1280 = 0
            mem[228] = address(sub_26fe433d[stor15[idx]].field_512)
            mem[260] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_4dd5aa97.length
        mem[0] = 15
        sub_4dd5aa97[idx] = 0
        idx = idx + 1
        s = sub_26fe433d[stor15[idx]].field_1536
        t = address(sub_26fe433d[stor15[idx]].field_512)
        u = sub_26fe433d[stor15[idx]].field_768
        continue 
    require sub_a943dc8b + sub_2f59a2a8 >= sub_2f59a2a8
    sub_2f59a2a8 = 0
    sub_a943dc8b = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sellerAddress, sub_a943dc8b + sub_2f59a2a8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.updateFromExchange(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sellerAddress, sub_a943dc8b + sub_2f59a2a8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x72c2edbf: s, price, sellerAddress, tokenAddress
    return 0
}

function sub_14c2827f(?) payable {
    require calldata.size - 4 >= 32
    if sellerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654f6e6c792053656c6c6572204f776e65722063616e2043616e63656c204f666665,
                    mem[198 len 30]
    if not uint8(sub_26fe433d[address(arg1)].field_0):
        revert with 0, 'eNo sellOffer submitted'
    idx = 128
    s = 0
    while sub_26fe433d[address(arg1)][1].length + 96 > idx:
        mem[idx + 32] = sub_26fe433d[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_26fe433d[address(arg1)][1].length <= 6:
        idx = 0
        while idx < sub_26fe433d[address(arg1)][1].length:
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 6:
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            idx = idx + 1
            continue 
    if sub_26fe433d[address(arg1)][1].length < 6:
        revert with 0, 'eNo sellOffer submitted'
    if sub_26fe433d[address(arg1)][1].length > 6:
        revert with 0, 'eNo sellOffer submitted'
    require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
    sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
    require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
    sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
    if not sub_26fe433d[address(arg1)].field_1536:
        bool(sub_26fe433d[address(arg1)].field_256) = 0
        uint255(sub_26fe433d[address(arg1)].field_257) = 0
        Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
        idx = 0
        while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_26fe433d[address(arg1)].field_1024 = 0
        sub_26fe433d[address(arg1)].field_768 = 0
        uint8(sub_26fe433d[address(arg1)].field_0) = 0
        sub_26fe433d[address(arg1)].field_1280 = 0
        require ext_code.size(address(stor1.length))
        call address(stor1.length).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        require sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536 / sub_26fe433d[address(arg1)].field_1536 == sub_26fe433d[address(arg1)].field_768
        bool(sub_26fe433d[address(arg1)].field_256) = 0
        uint255(sub_26fe433d[address(arg1)].field_257) = 0
        Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
        idx = 0
        while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_26fe433d[address(arg1)].field_1024 = 0
        sub_26fe433d[address(arg1)].field_768 = 0
        uint8(sub_26fe433d[address(arg1)].field_0) = 0
        sub_26fe433d[address(arg1)].field_1280 = 0
        require ext_code.size(address(stor1.length))
        call address(stor1.length).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7405a1d9: sub_26fe433d[address(arg1)].field_1536, sub_26fe433d[address(arg1)].field_1024, arg1, tokenAddress
}

function sub_cc3f8fdd(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.basicCap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 + ext_call.return_data[0] >= ext_call.return_data[0]
    if arg1 + ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(stor3)
        staticcall stor3.userType(address arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64596f752068617665206e65656420746f2055706772616465205072656d69756d204163636f756e,
                        mem[204 len 24]
    if arg2 >= price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x73507269636520736574206279204275796572206d757374206265206c657373207468616e2073656c6c65722070726963,
                    mem[213 len 15]
    if sub_2f59a2a8 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x7252656d61696e67205175616e74697479206973206d7573742062652067726561746572206f7220657175616c20746f206f66666572696e67207175616e746974,
                    mem[229 len 31]
    if not arg1:
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Buyer has not enough balance'
        if sub_26fe433d[address(arg3)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x74427579657220616c726561647920436f756e746572206f6e207468697320746f6b65,
                        mem[199 len 29]
        uint8(sub_26fe433d[address(arg3)].field_0) = 1
        bool(sub_26fe433d[address(arg3)].field_256) = 0
        uint255(sub_26fe433d[address(arg3)].field_257) = 5
        sub_26fe433d[address(arg3)].field_472 % 1099511627776 = 422877685106
        idx = 0
        while sub_26fe433d[address(arg3)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg3)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        require sub_26fe433d[address(arg3)].field_1280 + 1 >= sub_26fe433d[address(arg3)].field_1280
        sub_26fe433d[address(arg3)].field_1280++
        sub_26fe433d[address(arg3)].field_768 = arg2
        address(sub_26fe433d[address(arg3)].field_512) = arg3
        sub_26fe433d[address(arg3)].field_1536 = arg1
        sub_26fe433d[address(arg3)].field_1792 = block.timestamp + (48 * 24 * 3600)
        sub_4dd5aa97.length++
        sub_4dd5aa97[sub_4dd5aa97.length] = arg3
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x23b872dd with:
             gas gas_remaining wei
            args address(arg3), this.address, 0
    else:
        require arg2 * arg1 / arg1 == arg2
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 * arg1:
            revert with 0, 'Buyer has not enough balance'
        if sub_26fe433d[address(arg3)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x74427579657220616c726561647920436f756e746572206f6e207468697320746f6b65,
                        mem[199 len 29]
        uint8(sub_26fe433d[address(arg3)].field_0) = 1
        bool(sub_26fe433d[address(arg3)].field_256) = 0
        uint255(sub_26fe433d[address(arg3)].field_257) = 5
        sub_26fe433d[address(arg3)].field_472 % 1099511627776 = 422877685106
        idx = 0
        while sub_26fe433d[address(arg3)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg3)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        require sub_26fe433d[address(arg3)].field_1280 + 1 >= sub_26fe433d[address(arg3)].field_1280
        sub_26fe433d[address(arg3)].field_1280++
        sub_26fe433d[address(arg3)].field_768 = arg2
        address(sub_26fe433d[address(arg3)].field_512) = arg3
        sub_26fe433d[address(arg3)].field_1536 = arg1
        sub_26fe433d[address(arg3)].field_1792 = block.timestamp + (48 * 24 * 3600)
        sub_4dd5aa97.length++
        sub_4dd5aa97[sub_4dd5aa97.length] = arg3
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x23b872dd with:
             gas gas_remaining wei
            args address(arg3), this.address, arg2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdd4c4100: arg1, arg2, arg3, tokenAddress
}

function sub_764c4d02(?) payable {
    require calldata.size - 4 >= 32
    stor0++
    if sellerAddress != msg.sender:
        if not uint8(sub_26fe433d[msg.sender].field_0):
            revert with 0, 'No Sell Offer submitted'
        idx = 128
        s = 0
        while sub_26fe433d[msg.sender][1].length + 96 > idx:
            mem[idx + 32] = sub_26fe433d[msg.sender][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_26fe433d[msg.sender][1].length <= 6:
            idx = 0
            while idx < sub_26fe433d[msg.sender][1].length:
                require idx < 6
                require idx < sub_26fe433d[msg.sender][1].length
                require idx < 6
                require idx < sub_26fe433d[msg.sender][1].length
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 6:
                require idx < 6
                require idx < sub_26fe433d[msg.sender][1].length
                require idx < 6
                require idx < sub_26fe433d[msg.sender][1].length
                idx = idx + 1
                continue 
        if sub_26fe433d[msg.sender][1].length < 6:
            revert with 0, 'No Sell Offer submitted'
        if sub_26fe433d[msg.sender][1].length > 6:
            revert with 0, 'No Sell Offer submitted'
        if not sub_26fe433d[msg.sender].field_1536:
            uint8(sub_26fe433d[msg.sender].field_256) = 0
            Mask(248, 0, sub_26fe433d[msg.sender].field_264) = mem[ceil32(sub_26fe433d[msg.sender][1].length) + 224 len 31]
            idx = 0
            while sub_26fe433d[msg.sender][1].length + 31 / 32 > idx:
                sub_26fe433d[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_26fe433d[msg.sender].field_1280 = 0
            uint8(sub_26fe433d[msg.sender].field_0) = 0
            require sub_26fe433d[msg.sender].field_1536 <= sub_a943dc8b
            sub_a943dc8b -= sub_26fe433d[msg.sender].field_1536
            require sub_26fe433d[msg.sender].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
            sub_2f59a2a8 += sub_26fe433d[msg.sender].field_1536
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[msg.sender].field_512), 0
        else:
            require sub_26fe433d[msg.sender].field_768 * sub_26fe433d[msg.sender].field_1536 / sub_26fe433d[msg.sender].field_1536 == sub_26fe433d[msg.sender].field_768
            uint8(sub_26fe433d[msg.sender].field_256) = 0
            Mask(248, 0, sub_26fe433d[msg.sender].field_264) = mem[ceil32(sub_26fe433d[msg.sender][1].length) + 224 len 31]
            idx = 0
            while sub_26fe433d[msg.sender][1].length + 31 / 32 > idx:
                sub_26fe433d[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_26fe433d[msg.sender].field_1280 = 0
            uint8(sub_26fe433d[msg.sender].field_0) = 0
            require sub_26fe433d[msg.sender].field_1536 <= sub_a943dc8b
            sub_a943dc8b -= sub_26fe433d[msg.sender].field_1536
            require sub_26fe433d[msg.sender].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
            sub_2f59a2a8 += sub_26fe433d[msg.sender].field_1536
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[msg.sender].field_512), sub_26fe433d[msg.sender].field_768 * sub_26fe433d[msg.sender].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x21ad1f85: sub_26fe433d[msg.sender].field_1536, sub_26fe433d[msg.sender].field_1024, Array(len=20, data='Buyer reject counter'), address(sub_26fe433d[msg.sender].field_512), tokenAddress
    else:
        if not uint8(sub_26fe433d[address(arg1)].field_0):
            revert with 0, 'No Buy Offer submitted '
        idx = 128
        s = 0
        while sub_26fe433d[address(arg1)][1].length + 96 > idx:
            mem[idx + 32] = sub_26fe433d[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_26fe433d[address(arg1)][1].length <= 5:
            idx = 0
            while idx < sub_26fe433d[address(arg1)][1].length:
                require idx < 5
                require idx < sub_26fe433d[address(arg1)][1].length
                require idx < 5
                require idx < sub_26fe433d[address(arg1)][1].length
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 5:
                require idx < 5
                require idx < sub_26fe433d[address(arg1)][1].length
                require idx < 5
                require idx < sub_26fe433d[address(arg1)][1].length
                idx = idx + 1
                continue 
        if sub_26fe433d[address(arg1)][1].length < 5:
            revert with 0, 'No Buy Offer submitted '
        if sub_26fe433d[address(arg1)][1].length > 5:
            revert with 0, 'No Buy Offer submitted '
        if not sub_26fe433d[address(arg1)].field_1536:
            if sub_26fe433d[address(arg1)].field_1280 > 1:
                require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
                sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
                require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
                sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
            uint8(sub_26fe433d[address(arg1)].field_256) = 0
            Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
            idx = 0
            while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
                sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_26fe433d[address(arg1)].field_1280 = 0
            uint8(sub_26fe433d[address(arg1)].field_0) = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[address(arg1)].field_512), 0
        else:
            require sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536 / sub_26fe433d[address(arg1)].field_1536 == sub_26fe433d[address(arg1)].field_768
            if sub_26fe433d[address(arg1)].field_1280 > 1:
                require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
                sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
                require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
                sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
            uint8(sub_26fe433d[address(arg1)].field_256) = 0
            Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
            idx = 0
            while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
                sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_26fe433d[address(arg1)].field_1280 = 0
            uint8(sub_26fe433d[address(arg1)].field_0) = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[address(arg1)].field_512), sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x21ad1f85: sub_26fe433d[address(arg1)].field_1536, sub_26fe433d[address(arg1)].field_768, Array(len=21, data='Seller reject counter'), arg1, tokenAddress
    require stor0 + 1 == stor0
}

function sub_8bb666f0(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Price be greater than zero'
    if sub_26fe433d[address(arg2)].field_1280 <= 0:
        revert with 0, 'eNo sellOffer submitted'
    idx = 128
    s = 0
    while sub_26fe433d[address(arg2)][1].length + 96 > idx:
        mem[idx + 32] = sub_26fe433d[address(arg2)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_26fe433d[address(arg2)][1].length <= 6:
        idx = 0
        while idx < sub_26fe433d[address(arg2)][1].length:
            require idx < 6
            require idx < sub_26fe433d[address(arg2)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg2)][1].length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 6:
            require idx < 6
            require idx < sub_26fe433d[address(arg2)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg2)][1].length
            idx = idx + 1
            continue 
    if sub_26fe433d[address(arg2)][1].length < 6:
        revert with 0, 'eNo sellOffer submitted'
    if sub_26fe433d[address(arg2)][1].length > 6:
        revert with 0, 'eNo sellOffer submitted'
    if sub_26fe433d[address(arg2)].field_768 >= arg1:
        revert with 0, 
                    32,
                    44,
                    0x6f4e6577207072696365206d75737420626520686967686572207468616e2070726576696f7573204f666665,
                    mem[ceil32(sub_26fe433d[address(arg2)][1].length) + 304 len 20]
    if arg1 >= sub_26fe433d[address(arg2)].field_1024:
        revert with 0, 
                    32,
                    57,
                    0x73507269636520736574206279204275796572206d757374206265206c657373207468616e2073656c6c657220636f756e7465722070726963,
                    mem[ceil32(sub_26fe433d[address(arg2)][1].length) + 317 len 7]
    if sub_26fe433d[address(arg2)].field_1280 >= 4:
        revert with 0, 'counter exceeded'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.basicCap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_26fe433d[address(arg2)].field_1536 + ext_call.return_data[0] >= ext_call.return_data[0]
    if sub_26fe433d[address(arg2)].field_1536 + ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(stor3)
        staticcall stor3.userType(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        40,
                        0x64596f752068617665206e65656420746f2055706772616465205072656d69756d204163636f756e,
                        mem[ceil32(sub_26fe433d[address(arg2)][1].length) + 300 len 24]
    require sub_26fe433d[address(arg2)].field_768 <= arg1
    if not sub_26fe433d[address(arg2)].field_1536:
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Buyer has not enough balance'
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 
                        32,
                        36,
                        0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                        mem[ceil32(sub_26fe433d[address(arg2)][1].length) + 296 len 28]
        if sub_26fe433d[address(arg2)].field_1280 > 2:
            revert with 0, 'You should only 2 times counter'
        uint8(sub_26fe433d[address(arg2)].field_256) = 10
        Mask(208, 0, sub_26fe433d[address(arg2)].field_264) = 0
        sub_26fe433d[address(arg2)].field_472 % 1099511627776 = 422877685106
        idx = 0
        while sub_26fe433d[address(arg2)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg2)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        require sub_26fe433d[address(arg2)].field_1280 + 1 >= sub_26fe433d[address(arg2)].field_1280
        sub_26fe433d[address(arg2)].field_1280++
        sub_26fe433d[address(arg2)].field_768 = arg1
        sub_26fe433d[address(arg2)].field_1792 = block.timestamp + (48 * 24 * 3600)
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x23b872dd with:
             gas gas_remaining wei
            args address(sub_26fe433d[address(arg2)].field_512), this.address, 0
    else:
        require (arg1 * sub_26fe433d[address(arg2)].field_1536) - (sub_26fe433d[address(arg2)].field_768 * sub_26fe433d[address(arg2)].field_1536) / sub_26fe433d[address(arg2)].field_1536 == arg1 - sub_26fe433d[address(arg2)].field_768
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (arg1 * sub_26fe433d[address(arg2)].field_1536) - (sub_26fe433d[address(arg2)].field_768 * sub_26fe433d[address(arg2)].field_1536):
            revert with 0, 'Buyer has not enough balance'
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (arg1 * sub_26fe433d[address(arg2)].field_1536) - (sub_26fe433d[address(arg2)].field_768 * sub_26fe433d[address(arg2)].field_1536):
            revert with 0, 
                        32,
                        36,
                        0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                        mem[ceil32(sub_26fe433d[address(arg2)][1].length) + 296 len 28]
        if sub_26fe433d[address(arg2)].field_1280 > 2:
            revert with 0, 'You should only 2 times counter'
        uint8(sub_26fe433d[address(arg2)].field_256) = 10
        Mask(208, 0, sub_26fe433d[address(arg2)].field_264) = 0
        sub_26fe433d[address(arg2)].field_472 % 1099511627776 = 422877685106
        idx = 0
        while sub_26fe433d[address(arg2)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg2)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        require sub_26fe433d[address(arg2)].field_1280 + 1 >= sub_26fe433d[address(arg2)].field_1280
        sub_26fe433d[address(arg2)].field_1280++
        sub_26fe433d[address(arg2)].field_768 = arg1
        sub_26fe433d[address(arg2)].field_1792 = block.timestamp + (48 * 24 * 3600)
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0x23b872dd with:
             gas gas_remaining wei
            args address(sub_26fe433d[address(arg2)].field_512), this.address, (arg1 * sub_26fe433d[address(arg2)].field_1536) - (sub_26fe433d[address(arg2)].field_768 * sub_26fe433d[address(arg2)].field_1536)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdd4c4100: sub_26fe433d[address(arg2)].field_1536, sub_26fe433d[address(arg2)].field_768, arg2, tokenAddress
}

function sub_01d3ec02(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 112:
        revert with 0, 'Only Admin can Call'
    if not uint8(sub_26fe433d[address(arg1)].field_0):
        revert with 0, 'No offer exist'
    if sub_26fe433d[address(arg1)].field_1792 >= block.timestamp:
        revert with 0, 'Offer is not expired yet'
    idx = 128
    s = 0
    while sub_26fe433d[address(arg1)][1].length + 96 > idx:
        mem[idx + 32] = sub_26fe433d[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_26fe433d[address(arg1)][1].length <= 6:
        idx = 0
        while idx < sub_26fe433d[address(arg1)][1].length:
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 6:
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            require idx < 6
            require idx < sub_26fe433d[address(arg1)][1].length
            idx = idx + 1
            continue 
    if sub_26fe433d[address(arg1)][1].length < 6:
        if sub_26fe433d[address(arg1)].field_1280 >= 2:
            require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
            sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
            require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
            sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
        uint8(sub_26fe433d[address(arg1)].field_0) = 0
        bool(sub_26fe433d[address(arg1)].field_256) = 0
        uint255(sub_26fe433d[address(arg1)].field_257) = 0
        Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
        idx = 0
        while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
            sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_26fe433d[address(arg1)].field_1280 = 0
        if not sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536:
            sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1024 = 0
            sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_768 = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[address(arg1)].field_512), 0
        else:
            require sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536 / sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536 == sub_26fe433d[address(arg1)].field_768
            sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1024 = 0
            sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_768 = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(sub_26fe433d[address(arg1)].field_512), sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x7405a1d9: sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536, sub_26fe433d[address(arg1)].field_768, address(sub_26fe433d[address(arg1)].field_512), tokenAddress
    else:
        if sub_26fe433d[address(arg1)][1].length <= 6:
            require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
            sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
            require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
            sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
            if not sub_26fe433d[address(arg1)].field_1536:
                bool(sub_26fe433d[address(arg1)].field_256) = 0
                uint255(sub_26fe433d[address(arg1)].field_257) = 0
                Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
                idx = 0
                while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
                    sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_26fe433d[address(arg1)].field_1024 = 0
                sub_26fe433d[address(arg1)].field_768 = 0
                sub_26fe433d[address(arg1)].field_1280 = 0
                uint8(sub_26fe433d[address(arg1)].field_0) = 0
                require ext_code.size(address(stor1.length))
                call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536 / sub_26fe433d[address(arg1)].field_1536 == sub_26fe433d[address(arg1)].field_768
                bool(sub_26fe433d[address(arg1)].field_256) = 0
                uint255(sub_26fe433d[address(arg1)].field_257) = 0
                Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
                idx = 0
                while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
                    sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_26fe433d[address(arg1)].field_1024 = 0
                sub_26fe433d[address(arg1)].field_768 = 0
                sub_26fe433d[address(arg1)].field_1280 = 0
                uint8(sub_26fe433d[address(arg1)].field_0) = 0
                require ext_code.size(address(stor1.length))
                call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(arg1)].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x7405a1d9: sub_26fe433d[address(arg1)].field_1536, sub_26fe433d[address(arg1)].field_1024, arg1, tokenAddress
        else:
            if sub_26fe433d[address(arg1)].field_1280 >= 2:
                require sub_26fe433d[address(arg1)].field_1536 <= sub_a943dc8b
                sub_a943dc8b -= sub_26fe433d[address(arg1)].field_1536
                require sub_26fe433d[address(arg1)].field_1536 + sub_2f59a2a8 >= sub_2f59a2a8
                sub_2f59a2a8 += sub_26fe433d[address(arg1)].field_1536
            uint8(sub_26fe433d[address(arg1)].field_0) = 0
            bool(sub_26fe433d[address(arg1)].field_256) = 0
            uint255(sub_26fe433d[address(arg1)].field_257) = 0
            Mask(248, 0, sub_26fe433d[address(arg1)].field_264) = mem[ceil32(sub_26fe433d[address(arg1)][1].length) + 224 len 31]
            idx = 0
            while sub_26fe433d[address(arg1)][1].length + 31 / 32 > idx:
                sub_26fe433d[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_26fe433d[address(arg1)].field_1280 = 0
            if not sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536:
                sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1024 = 0
                sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_768 = 0
                require ext_code.size(address(stor1.length))
                call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(sub_26fe433d[address(arg1)].field_512), 0
            else:
                require sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536 / sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536 == sub_26fe433d[address(arg1)].field_768
                sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1024 = 0
                sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_768 = 0
                require ext_code.size(address(stor1.length))
                call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(sub_26fe433d[address(arg1)].field_512), sub_26fe433d[address(arg1)].field_768 * sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x7405a1d9: sub_26fe433d[address(sub_26fe433d[address(arg1)].field_512)].field_1536, sub_26fe433d[address(arg1)].field_768, address(sub_26fe433d[address(arg1)].field_512), tokenAddress
}

function buyTokens(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    stor0++
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.basicCap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 + ext_call.return_data[0] >= ext_call.return_data[0]
    if arg1 + ext_call.return_data[0] <= ext_call.return_data[0]:
        if sellerAddress == arg2:
            revert with 0, 'Seller cannot buy token'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6e5175616e74697479206d7573742062652067726561746572207468616e207a6572,
                        mem[198 len 30]
        if arg1 > sub_2f59a2a8:
            revert with 0, 'Tokens are not available'
        if not arg1:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Buyer have not enough balance'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6f436f6e747261637420646f6e2774206861766520656e6f75676820536563757269747920546f6b656e,
                            mem[206 len 22]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                            mem[200 len 28]
            require arg1 <= sub_2f59a2a8
            sub_2f59a2a8 -= arg1
            mem[164] = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), sellerAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sellerAddress
            mem[132] = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.updateFromExchange(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sellerAddress, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < sub_4dd5aa97.length:
                mem[0] = sub_4dd5aa97[idx]
                mem[32] = 14
                if uint8(sub_26fe433d[stor15[idx]].field_0):
                    require idx < sub_4dd5aa97.length
                    mem[0] = sub_4dd5aa97[idx]
                    mem[32] = 14
                    if sub_26fe433d[stor15[idx]].field_1536 > sub_2f59a2a8:
                        require idx < sub_4dd5aa97.length
                        mem[0] = sub_4dd5aa97[idx]
                        mem[32] = 14
                        if 1 == sub_26fe433d[stor15[idx]].field_1280:
                            require idx < sub_4dd5aa97.length
                            mem[0] = sub_4dd5aa97[idx]
                            mem[32] = 14
                            _2188 = mem[64]
                            mem[64] = mem[64] + ceil32(sub_26fe433d[stor15[idx]][1].length) + 32
                            mem[_2188] = sub_26fe433d[stor15[idx]][1].length
                            mem[0] = sha3(sub_4dd5aa97[idx], 14) + 1
                            mem[_2188 + 32] = sub_26fe433d[stor15[idx]][1].field_0
                            s = _2188 + 32
                            t = sha3(mem[0])
                            while _2188 + sub_26fe433d[stor15[idx]][1].length > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            _4240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4240] = 5
                            mem[_4240 + 32] = 0x6275796572000000000000000000000000000000000000000000000000000000
                            if mem[_2188] <= 5:
                                s = 0
                                while s < mem[_2188]:
                                    require s < 5
                                    require s < mem[_2188]
                                    require s < 5
                                    require s < mem[_2188]
                                    s = s + 1
                                    continue 
                                if mem[_2188] >= 5:
                                    if mem[_2188] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7049] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7049 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7063 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7063] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7063 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                            else:
                                s = 0
                                while s < 5:
                                    require s < 5
                                    require s < mem[_2188]
                                    require s < 5
                                    require s < mem[_2188]
                                    s = s + 1
                                    continue 
                                if mem[_2188] >= 5:
                                    if mem[_2188] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7050 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7050] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7050 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7067 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7067] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7067 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                idx = idx + 1
                continue 
        else:
            require price * arg1 / arg1 == price
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < price * arg1:
                revert with 0, 'Buyer have not enough balance'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6f436f6e747261637420646f6e2774206861766520656e6f75676820536563757269747920546f6b656e,
                            mem[206 len 22]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < price * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                            mem[200 len 28]
            require arg1 <= sub_2f59a2a8
            sub_2f59a2a8 -= arg1
            mem[164] = price * arg1
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), sellerAddress, price * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sellerAddress
            mem[132] = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.updateFromExchange(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sellerAddress, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < sub_4dd5aa97.length:
                mem[0] = sub_4dd5aa97[idx]
                mem[32] = 14
                if uint8(sub_26fe433d[stor15[idx]].field_0):
                    require idx < sub_4dd5aa97.length
                    mem[0] = sub_4dd5aa97[idx]
                    mem[32] = 14
                    if sub_26fe433d[stor15[idx]].field_1536 > sub_2f59a2a8:
                        require idx < sub_4dd5aa97.length
                        mem[0] = sub_4dd5aa97[idx]
                        mem[32] = 14
                        if 1 == sub_26fe433d[stor15[idx]].field_1280:
                            require idx < sub_4dd5aa97.length
                            mem[0] = sub_4dd5aa97[idx]
                            mem[32] = 14
                            _2185 = mem[64]
                            mem[64] = mem[64] + ceil32(sub_26fe433d[stor15[idx]][1].length) + 32
                            mem[_2185] = sub_26fe433d[stor15[idx]][1].length
                            mem[0] = sha3(sub_4dd5aa97[idx], 14) + 1
                            mem[_2185 + 32] = sub_26fe433d[stor15[idx]][1].field_0
                            s = _2185 + 32
                            t = sha3(mem[0])
                            while _2185 + sub_26fe433d[stor15[idx]][1].length > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            _4223 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4223] = 5
                            mem[_4223 + 32] = 0x6275796572000000000000000000000000000000000000000000000000000000
                            if mem[_2185] <= 5:
                                s = 0
                                while s < mem[_2185]:
                                    require s < 5
                                    require s < mem[_2185]
                                    require s < 5
                                    require s < mem[_2185]
                                    s = s + 1
                                    continue 
                                if mem[_2185] >= 5:
                                    if mem[_2185] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7047 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7047] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7047 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7055 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7055] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7055 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                            else:
                                s = 0
                                while s < 5:
                                    require s < 5
                                    require s < mem[_2185]
                                    require s < 5
                                    require s < mem[_2185]
                                    s = s + 1
                                    continue 
                                if mem[_2185] >= 5:
                                    if mem[_2185] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7048 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7048] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7048 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7059 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7059] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7059 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                idx = idx + 1
                continue 
    else:
        require ext_code.size(stor3)
        staticcall stor3.userType(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64596f752068617665206e65656420746f2055706772616465205072656d69756d204163636f756e,
                        mem[204 len 24]
        if sellerAddress == arg2:
            revert with 0, 'Seller cannot buy token'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6e5175616e74697479206d7573742062652067726561746572207468616e207a6572,
                        mem[198 len 30]
        if arg1 > sub_2f59a2a8:
            revert with 0, 'Tokens are not available'
        if not arg1:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Buyer have not enough balance'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6f436f6e747261637420646f6e2774206861766520656e6f75676820536563757269747920546f6b656e,
                            mem[206 len 22]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                            mem[200 len 28]
            require arg1 <= sub_2f59a2a8
            sub_2f59a2a8 -= arg1
            mem[164] = 0
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), sellerAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sellerAddress
            mem[132] = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.updateFromExchange(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sellerAddress, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < sub_4dd5aa97.length:
                mem[0] = sub_4dd5aa97[idx]
                mem[32] = 14
                if uint8(sub_26fe433d[stor15[idx]].field_0):
                    require idx < sub_4dd5aa97.length
                    mem[0] = sub_4dd5aa97[idx]
                    mem[32] = 14
                    if sub_26fe433d[stor15[idx]].field_1536 > sub_2f59a2a8:
                        require idx < sub_4dd5aa97.length
                        mem[0] = sub_4dd5aa97[idx]
                        mem[32] = 14
                        if 1 == sub_26fe433d[stor15[idx]].field_1280:
                            require idx < sub_4dd5aa97.length
                            mem[0] = sub_4dd5aa97[idx]
                            mem[32] = 14
                            _2194 = mem[64]
                            mem[64] = mem[64] + ceil32(sub_26fe433d[stor15[idx]][1].length) + 32
                            mem[_2194] = sub_26fe433d[stor15[idx]][1].length
                            mem[0] = sha3(sub_4dd5aa97[idx], 14) + 1
                            mem[_2194 + 32] = sub_26fe433d[stor15[idx]][1].field_0
                            s = _2194 + 32
                            t = sha3(mem[0])
                            while _2194 + sub_26fe433d[stor15[idx]][1].length > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            _4274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4274] = 5
                            mem[_4274 + 32] = 0x6275796572000000000000000000000000000000000000000000000000000000
                            if mem[_2194] <= 5:
                                s = 0
                                while s < mem[_2194]:
                                    require s < 5
                                    require s < mem[_2194]
                                    require s < 5
                                    require s < mem[_2194]
                                    s = s + 1
                                    continue 
                                if mem[_2194] >= 5:
                                    if mem[_2194] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7053 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7053] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7053 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7079 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7079] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7079 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                            else:
                                s = 0
                                while s < 5:
                                    require s < 5
                                    require s < mem[_2194]
                                    require s < 5
                                    require s < mem[_2194]
                                    s = s + 1
                                    continue 
                                if mem[_2194] >= 5:
                                    if mem[_2194] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7054 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7054] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7054 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7083 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7083] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7083 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                idx = idx + 1
                continue 
        else:
            require price * arg1 / arg1 == price
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < price * arg1:
                revert with 0, 'Buyer have not enough balance'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6f436f6e747261637420646f6e2774206861766520656e6f75676820536563757269747920546f6b656e,
                            mem[206 len 22]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < price * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x7242757965722073686f756c6420616c6c6f7720636f6e747261637420746f207370656e,
                            mem[200 len 28]
            require arg1 <= sub_2f59a2a8
            sub_2f59a2a8 -= arg1
            mem[164] = price * arg1
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), sellerAddress, price * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sellerAddress
            mem[132] = arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.updateFromExchange(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sellerAddress, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < sub_4dd5aa97.length:
                mem[0] = sub_4dd5aa97[idx]
                mem[32] = 14
                if uint8(sub_26fe433d[stor15[idx]].field_0):
                    require idx < sub_4dd5aa97.length
                    mem[0] = sub_4dd5aa97[idx]
                    mem[32] = 14
                    if sub_26fe433d[stor15[idx]].field_1536 > sub_2f59a2a8:
                        require idx < sub_4dd5aa97.length
                        mem[0] = sub_4dd5aa97[idx]
                        mem[32] = 14
                        if 1 == sub_26fe433d[stor15[idx]].field_1280:
                            require idx < sub_4dd5aa97.length
                            mem[0] = sub_4dd5aa97[idx]
                            mem[32] = 14
                            _2191 = mem[64]
                            mem[64] = mem[64] + ceil32(sub_26fe433d[stor15[idx]][1].length) + 32
                            mem[_2191] = sub_26fe433d[stor15[idx]][1].length
                            mem[0] = sha3(sub_4dd5aa97[idx], 14) + 1
                            mem[_2191 + 32] = sub_26fe433d[stor15[idx]][1].field_0
                            s = _2191 + 32
                            t = sha3(mem[0])
                            while _2191 + sub_26fe433d[stor15[idx]][1].length > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            _4257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4257] = 5
                            mem[_4257 + 32] = 0x6275796572000000000000000000000000000000000000000000000000000000
                            if mem[_2191] <= 5:
                                s = 0
                                while s < mem[_2191]:
                                    require s < 5
                                    require s < mem[_2191]
                                    require s < 5
                                    require s < mem[_2191]
                                    s = s + 1
                                    continue 
                                if mem[_2191] >= 5:
                                    if mem[_2191] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7051 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7051] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7051 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7071] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7071 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                            else:
                                s = 0
                                while s < 5:
                                    require s < 5
                                    require s < mem[_2191]
                                    require s < 5
                                    require s < mem[_2191]
                                    s = s + 1
                                    continue 
                                if mem[_2191] >= 5:
                                    if mem[_2191] <= 5:
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = sub_4dd5aa97[idx]
                                        if not sub_26fe433d[stor15[idx]].field_1536:
                                            _7052 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7052] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7052 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), 0
                                        else:
                                            require sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536 / sub_26fe433d[stor15[idx]].field_1536 == sub_26fe433d[stor15[idx]].field_768
                                            _7075 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7075] = 0
                                            require idx < sub_4dd5aa97.length
                                            mem[32] = 14
                                            bool(sub_26fe433d[stor15[idx]].field_256) = 0
                                            uint255(sub_26fe433d[stor15[idx]].field_257) = 0
                                            Mask(248, 0, sub_26fe433d[stor15[idx]].field_264) = mem[_7075 + 32 len 31]
                                            s = sha3(sha3(sub_4dd5aa97[idx], 14) + 1)
                                            while sha3(sha3(sub_4dd5aa97[idx], 14) + 1) + (sub_26fe433d[stor15[idx]][1].length + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            require idx < sub_4dd5aa97.length
                                            sub_26fe433d[stor15[idx]].field_1280 = 0
                                            mem[32] = 14
                                            uint8(sub_26fe433d[stor15[idx]].field_0) = 0
                                            mem[mem[64] + 4] = address(sub_26fe433d[stor15[idx]].field_512)
                                            mem[mem[64] + 36] = sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(sub_26fe433d[stor15[idx]].field_512), sub_26fe433d[stor15[idx]].field_768 * sub_26fe433d[stor15[idx]].field_1536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_4dd5aa97.length
                                        mem[0] = 15
                                        sub_4dd5aa97[idx] = 0
                idx = idx + 1
                continue 
    emit TokensPurchased(arg1, price, arg2, tokenAddress);
    require stor0 + 1 == stor0
}



}
