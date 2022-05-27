contract main {




// =====================  Runtime code  =====================


address owner;
address sub_858c99d5Address;
uint32 stor2;
address sub_d392eab1Address;
uint256 stor2;
address mimAddress;
uint256 minAmount;
uint256 maxAmount;
uint256 salePrice;
uint256 sub_5243ada6;
uint256 sellAmount;
uint256 sub_e58bf43a;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8
mapping of uint8 stor11;
mapping of uint8 stor12;

function sub_1cfa43eb(?) payable {
    return bool(uint8(stor10.field_0))
}

function publicSale() payable {
    return bool(uint8(stor10.field_8))
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function sellAmount() payable {
    return sellAmount
}

function sub_5243ada6(?) payable {
    return sub_5243ada6
}

function maxAmount() payable {
    return maxAmount
}

function boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_858c99d5(?) payable {
    return sub_858c99d5Address
}

function owner() payable {
    return owner
}

function minAmount() payable {
    return minAmount
}

function mim() payable {
    return mimAddress
}

function sub_d392eab1(?) payable {
    return address(sub_d392eab1Address)
}

function sub_e58bf43a(?) payable {
    return sub_e58bf43a
}

function salePrice() payable {
    return salePrice
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor10.field_0) = uint8(arg1)
}

function togglePublicSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg1)
}

function setAllocation(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minAmount = arg1
    maxAmount = arg2
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_858c99d5Address = arg1
    mimAddress = arg2
    salePrice = arg6
    minAmount = arg3
    maxAmount = arg4
    sub_5243ada6 = arg5
    sub_e58bf43a = arg7
    return 1
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if salePrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require salePrice
    return (10^9 * arg1 / salePrice)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b91067de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function whitelistUsers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < minAmount:
        revert with 0, 'Below minimum allocation'
    if arg1 > maxAmount:
        revert with 0, 'More than allocation'
    if sellAmount + arg1 < sellAmount:
        revert with 0, 'SafeMath: addition overflow'
    sellAmount += arg1
    if sellAmount > sub_5243ada6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6454686520616d6f756e7420656e746572656420657863656564732049444f20476f61,
                    mem[199 len 29]
    if bool(uint8(stor10.field_0)) != 1:
        revert with 0, 'IDO is closed'
    if stor11[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73596f7527766520616c72656164792070617274696369706174656420746f207468652049444f,
                    mem[203 len 25]
    stor11[address(msg.sender)] = 1
    if not uint8(stor10.field_8):
        if bool(stor12[address(msg.sender)]) != 1:
            revert with 0, 'You're not Whitelisted'
        if ext_code.size(mimAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call mimAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                mem[748 len 0] = 0
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                return 1
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 558 len 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if ext_code.size(sub_858c99d5Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
            mem[ceil32(return_data.size) + 777 len 4] = 0
            call sub_858c99d5Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 795 len 22]
                return 1
            mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 717]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return 1, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 558 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                mem[ceil32(return_data.size) + 749 len 0] = 0
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 686 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call sub_858c99d5Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 686 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 718]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 558 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                mem[ceil32(return_data.size) + 777 len 4] = 0
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                    return 1
                mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 717]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return 1, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if ext_code.size(sub_858c99d5Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 686 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call sub_858c99d5Address with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 686 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 796 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 718]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
    else:
        if arg1 > sub_e58bf43a:
            revert with 0, 'More than public sale allocation'
        if ext_code.size(mimAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call mimAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                return 1
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 558 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                mem[ceil32(return_data.size) + 749 len 0] = 0
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                return 1
            require return_data.size >= 32
            if not mem[488]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 558 len 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if ext_code.size(sub_858c99d5Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
            mem[ceil32(return_data.size) + 777 len 4] = 0
            call sub_858c99d5Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 795 len 22]
                return 1
            mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 717]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return 1, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 521 len 0] = 0
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 558 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = 0, msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 10^9 * arg1 / salePrice, mem[ceil32(return_data.size) + 621 len 28], mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 559 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 10^9 * arg1 / salePrice, mem[(2 * ceil32(return_data.size)) + 622 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 718]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if ext_code.size(mimAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call mimAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if 10^9 * arg1 / 10^9 != arg1:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 558 len 31]
                if salePrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require salePrice
                if ext_code.size(sub_858c99d5Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^9 * arg1 / salePrice) >> 32
                mem[ceil32(return_data.size) + 777 len 4] = 0
                call sub_858c99d5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^9 * arg1 / salePrice) << 224, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                    return 1
                mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 717]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return 1, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if 10^9 * arg1 / 10^9 != arg1:
                revert with 0, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
            if salePrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require salePrice
            if ext_code.size(sub_858c99d5Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 686 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call sub_858c99d5Address with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 10^9 * arg1 / salePrice) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 686 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 796 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 718]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
    return 1
}



}
