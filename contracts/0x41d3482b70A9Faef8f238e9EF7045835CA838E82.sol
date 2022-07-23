contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, uint256 arg2)
#
uint32 stor0;
address owner;
uint256 stor0;
address tokenERC20Address;
address sub_72f935e8Address;
uint256 price;
uint256 sub_30aa49cb;
uint256 total;
uint256 limit;
uint256 chain;
mapping of uint8 stor8;

function total() {
    return total
}

function sub_30aa49cb(?) {
    return sub_30aa49cb
}

function sub_72f935e8(?) {
    return sub_72f935e8Address
}

function owner() {
    return address(owner)
}

function tokenERC20() {
    return tokenERC20Address
}

function price() {
    return price
}

function limit() {
    return limit
}

function chain() {
    return chain
}

function setLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    limit = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: address(owner), 0
    address(owner) = 0
}

function sub_90897b2a(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[arg1] = uint8(bool(arg2))
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
    sub_30aa49cb = arg2
    return 1
}

function sub_1622072c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenERC20Address = address(arg1)
    sub_72f935e8Address = address(arg2)
}

function withdrawBnb() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: address(owner), arg1
    address(owner) = arg1
}

function withdraw() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(tokenERC20Address)
    staticcall tokenERC20Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenERC20Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenERC20Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        revert with 0, 'R'
    if unknown_0x1622072c(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        tokenERC20Address = address(arg1)
        sub_72f935e8Address = address(arg2)
    if unknown_0x1da0603a(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x27ea6f2b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        limit = arg1
    if unknown_0x2ddbd13a(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return total
    if unknown_0x30aa49cb(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return sub_30aa49cb
    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[132] = this.address
        require ext_code.size(tokenERC20Address)
        staticcall tokenERC20Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 164] = address(owner)
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 128] = 68
        mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenERC20Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 360] = 0
        call tokenERC20Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        emit 0xfe8be007: address(owner), 0
        address(owner) = 0
    if unknown_0x72f935e8(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return sub_72f935e8Address
    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return address(owner)
    if unknown_0x90897b2a(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require arg2 == bool(arg2)
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor8[arg1] = uint8(bool(arg2))
    if unknown_0x9d143e8e(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return tokenERC20Address
    if unknown_0xa035b1fe(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return price
    if unknown_0xa4d66daf(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return limit
    if unknown_0xc763e5a1(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return chain
    if uint32(call.func_hash) >> 224 != unknown_0xd6febde8(?????):
        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
            require unknown_0xf7d97577(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            if address(owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            price = arg1
            sub_30aa49cb = arg2
            return 1
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not address(arg1):
            revert with 0, 'Ownable: new owner is the zero address'
        emit 0xfe8be007: address(owner), address(arg1)
        address(owner) = address(arg1)
    require calldata.size - 4 >= 64
    if arg1 < limit:
        revert with 0, 'param error'
    if bool(stor8[arg2]) != 1:
        revert with 0, 'param error'
    if msg.value:
        if sub_30aa49cb <= 0:
            revert with 0, 'please set price'
        if sub_30aa49cb and arg1 > -1 / sub_30aa49cb:
            revert with 0, 17
        if msg.value < sub_30aa49cb * arg1:
            revert with 0, 'BNB value is not enough'
        if sub_72f935e8Address:
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            mem[164] = msg.sender
            mem[196] = 10^18 * arg1
            mem[128] = 68
            mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[160 len 4] = unknown_0xa9059cbb(?????)
            mem[228] = 32
            mem[260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_72f935e8Address):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0xa9059cbb(?????), msg.sender, 10^18 * arg1, 0
            mem[360] = 0
            call sub_72f935e8Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 10^18 * arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 10^18 * arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
                emit 0x2eaa22fb: msg.sender, arg2, arg1
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x2eaa22fb: msg.sender, arg2, arg1
    if price <= 0:
        revert with 0, 'please set price'
    if price and arg1 > -1 / price:
        revert with 0, 17
    mem[132] = msg.sender
    require ext_code.size(tokenERC20Address)
    staticcall tokenERC20Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < price * arg1:
        revert with 0, 'token balance is not enough'
    if price and arg1 > -1 / price:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(tokenERC20Address)
    staticcall tokenERC20Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < price * arg1:
        revert with 0, 'token allowance is not enough'
    if price and arg1 > -1 / price:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = price * arg1
    mem[(2 * ceil32(return_data.size)) + 128] = 100
    mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 260] = 32
    mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenERC20Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), price * arg1, 0
    mem[(2 * ceil32(return_data.size)) + 424] = 0
    call tokenERC20Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), price * arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), price * arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if sub_72f935e8Address:
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 360] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 392] = 10^18 * arg1
            mem[(2 * ceil32(return_data.size)) + 324] = 68
            mem[(2 * ceil32(return_data.size)) + 356 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 424] = 32
            mem[(2 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_72f935e8Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 488 len 96] = 0, msg.sender, 10^18 * arg1, 0
            mem[(2 * ceil32(return_data.size)) + 556] = 0
            call sub_72f935e8Address with:
               funct Mask(32, 224, 0, msg.sender, 10^18 * arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, 10^18 * arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 520] == bool(mem[(2 * ceil32(return_data.size)) + 520])
                    if not mem[(2 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x2eaa22fb: msg.sender, arg2, arg1
    mem[(2 * ceil32(return_data.size)) + 324] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
        if not mem[(2 * ceil32(return_data.size)) + 356]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not sub_72f935e8Address:
        emit 0x2eaa22fb: msg.sender, arg2, arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 10^18 * arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_72f935e8Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, msg.sender, 10^18 * arg1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
    call sub_72f935e8Address with:
       funct Mask(32, 224, 0, msg.sender, 10^18 * arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, 10^18 * arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x2eaa22fb: msg.sender, arg2, arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 494] = 32
        mem[(4 * ceil32(return_data.size)) + 526] = 32
        mem[(4 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 490
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[(4 * ceil32(return_data.size)) + 490] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 522] = arg2
        mem[(4 * ceil32(return_data.size)) + 554] = arg1
        emit 0x2eaa22fb: mem[(4 * ceil32(return_data.size)) + 490 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
        mem[(4 * ceil32(return_data.size)) + 490] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 522] = arg2
        mem[(4 * ceil32(return_data.size)) + 554] = arg1
        emit 0x2eaa22fb: mem[(4 * ceil32(return_data.size)) + 490 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
    mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 494] = 32
    mem[(4 * ceil32(return_data.size)) + 526] = 42
    mem[(4 * ceil32(return_data.size)) + 558] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 490
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
