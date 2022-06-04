contract main {




// =====================  Runtime code  =====================


#
#  - getAmountsIn(uint256 arg1, address[] arg2)
#
const ledger = 0x5c18ad1e3118654d9149148a5438eb681178fe77


address owner;
array of address stor1;
mapping of uint8 stor2;
uint256 operatorsCount;
mapping of uint256 sub_0eb1b8aa;
mapping of uint8 stor5;
array of address sub_b1fc7008;
uint256 stor7;
uint256 stor8;
uint256 sub_85f87f89;
mapping of uint256 sub_3eeaa9d0;

function sub_0eb1b8aa(?) {
    require calldata.size - 4 >= 32
    return sub_0eb1b8aa[arg1]
}

function sub_3eeaa9d0(?) {
    require calldata.size - 4 >= 32
    return sub_3eeaa9d0[arg1]
}

function operatorsCount() {
    return operatorsCount
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_85f87f89(?) {
    return sub_85f87f89
}

function owner() {
    return owner
}

function sub_b1fc7008(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1fc7008.length
    return sub_b1fc7008[arg1]
}

function isRegistered(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function sub_dde6c857(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_85f87f89 = arg1
}

function sub_9abd89c2(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor7 = arg1
    stor8 = arg2
}

function removePair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor5[address(arg1)] = 0
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor2[address(arg1)] = 0
    sub_3eeaa9d0[address(arg1)] = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    owner = arg1
}

function sub_54925e7e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not stor2[address(arg1)]:
        revert with 0, 'Not Operator'
    sub_3eeaa9d0[address(arg1)] = sub_85f87f89
}

function sub_1d9599d3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor5[address(arg1)]:
        revert with 0, 'pair existed'
    sub_0eb1b8aa[address(arg1)] = arg2
    stor5[address(arg1)] = 1
    sub_b1fc7008.length++
    sub_b1fc7008[sub_b1fc7008.length] = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor2[address(arg1)]:
        revert with 0, 'Operator Exist!'
    stor1.length++
    stor1[stor1.length] = arg1
    stor2[address(arg1)] = 1
    operatorsCount++
    sub_3eeaa9d0[address(arg1)] = sub_85f87f89
}

function recoverBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3eeed481(?) {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    idx = 0
    while idx < operatorsCount:
        require idx < stor1.length
        mem[0] = stor1[idx]
        mem[32] = 2
        if stor2[stor1[idx]]:
            require idx < stor1.length
            mem[0] = stor1[idx]
            mem[32] = 10
            sub_3eeaa9d0[stor1[idx]] = sub_85f87f89
        idx = idx + 1
        continue 
}

function recover(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f90c182a(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Operator'
    if arg1 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Not WBNB'
    if sub_3eeaa9d0[address(msg.sender)] <= stor8:
        revert with 0, 'Fee Allowance Not Enough'
    if eth.balance(msg.sender) >= stor7:
        revert with 0, 'BNB Enough, No Need For Funding'
    sub_3eeaa9d0[address(msg.sender)] -= stor8
    if eth.balance(this.address) < stor8:
        revert with 0, 'Balance Not Enough for Funding'
    call msg.sender with:
       value stor8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = w
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = 10000 * Mask(112, 0, ext_call.return_data[32])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = w
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = 10000 * Mask(112, 0, ext_call.return_data[0])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    else:
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = w
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = 10000 * Mask(112, 0, ext_call.return_data[32])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = w
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = 10000 * Mask(112, 0, ext_call.return_data[0])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    require arg2.length - 1 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = w
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_cffce9e8(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = 10000 * Mask(112, 0, ext_call.return_data[32])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        x = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = 10000 * Mask(112, 0, ext_call.return_data[0])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        x = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    else:
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = 10000 * Mask(112, 0, ext_call.return_data[32])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        x = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = 10000 * Mask(112, 0, ext_call.return_data[0])
                        v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        x = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = w
                                    x = x
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                x = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    require arg2.length - 1 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = w
    mem[(64 * arg2.length) + 192] = address(x)
    mem[(64 * arg2.length) + 160] = 64
    mem[(64 * arg2.length) + 224] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 256 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return memory
      from (64 * arg2.length) + 160
       len (32 * mem[(32 * arg2.length) + 128]) + (127 * arg2.length) + 96
}

function sub_1690d685(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require arg2.length - 1 < arg2.length
        mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
        require 0 < arg2.length
        require 1 < arg2.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 19
            mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 12
                mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
            require 0 < arg2.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = -1
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_702] = 30
                        mem[_702 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_741 + idx + 68] = mem[_702 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_741 + 68] = mem[_741 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _741 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        x = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _740 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_740] = 30
                        mem[_740 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _789 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_789 + idx + 68] = mem[_740 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_789 + 68] = mem[_789 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _789 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        x = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32]) * arg1
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_788] = 30
                    mem[_788 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_844 + idx + 68] = mem[_788 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_844 + 68] = mem[_844 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _844 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require 0 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + 160] = w
                mem[mem[64] + 32] = address(x)
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
                _574 = mem[(32 * arg2.length) + 128]
                mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                return 64, address(x), mem[mem[64] + 64 len (32 * _574) + 32]
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[0]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_705] = 30
                    mem[_705 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_745 + idx + 68] = mem[_705 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_745 + 68] = mem[_745 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _745 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_744] = 30
                    mem[_744 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_794 + idx + 68] = mem[_744 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_794 + 68] = mem[_794 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _794 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 30
                mem[_793 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_849 + idx + 68] = mem[_793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_849 + 68] = mem[_849 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _849 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = w
            mem[mem[64] + 32] = address(x)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _580 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(x), mem[mem[64] + 64 len (32 * _580) + 32]
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_708] = 30
                    mem[_708 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_749 + idx + 68] = mem[_708 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_749 + 68] = mem[_749 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _749 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 30
                    mem[_748 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_799 + idx + 68] = mem[_748 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_799 + 68] = mem[_799 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _799 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_798] = 30
                mem[_798 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _854 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_854 + idx + 68] = mem[_798 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_854 + 68] = mem[_854 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _854 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = w
            mem[mem[64] + 32] = address(x)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _586 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(x), mem[mem[64] + 64 len (32 * _586) + 32]
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 30
                mem[_711 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_753 + idx + 68] = mem[_711 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_753 + 68] = mem[_753 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _753 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _752 = mem[64]
                mem[64] = mem[64] + 64
                mem[_752] = 30
                mem[_752 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_804 + idx + 68] = mem[_752 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_804 + 68] = mem[_804 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _804 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _803 = mem[64]
            mem[64] = mem[64] + 64
            mem[_803] = 30
            mem[_803 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _859 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_859 + idx + 68] = mem[_803 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_859 + 68] = mem[_859 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _859 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = w
        mem[mem[64] + 32] = address(x)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _592 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(x), mem[mem[64] + 64 len (32 * _592) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length - 1 < arg2.length
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_714] = 30
                    mem[_714 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_757 + idx + 68] = mem[_714 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_757 + 68] = mem[_757 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _757 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 30
                    mem[_756 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_809 + idx + 68] = mem[_756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_809 + 68] = mem[_809 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _809 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 30
                mem[_808 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_864 + idx + 68] = mem[_808 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_864 + 68] = mem[_864 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _864 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = w
            mem[mem[64] + 32] = address(x)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _598 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(x), mem[mem[64] + 64 len (32 * _598) + 32]
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_717] = 30
                mem[_717 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _761 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_761 + idx + 68] = mem[_717 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_761 + 68] = mem[_761 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _761 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _760 = mem[64]
                mem[64] = mem[64] + 64
                mem[_760] = 30
                mem[_760 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _814 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_814 + idx + 68] = mem[_760 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_814 + 68] = mem[_814 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _814 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _813 = mem[64]
            mem[64] = mem[64] + 64
            mem[_813] = 30
            mem[_813 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _869 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_869 + idx + 68] = mem[_813 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_869 + 68] = mem[_869 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _869 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = w
        mem[mem[64] + 32] = address(x)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _604 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(x), mem[mem[64] + 64 len (32 * _604) + 32]
    if not mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 12
        mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    require 0 < arg2.length
    if mem[172 len 20] != mem[140 len 20]:
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[32]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_720] = 30
                mem[_720 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _765 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_765 + idx + 68] = mem[_720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_765 + 68] = mem[_765 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _765 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _764 = mem[64]
                mem[64] = mem[64] + 64
                mem[_764] = 30
                mem[_764 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_819 + idx + 68] = mem[_764 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_819 + 68] = mem[_819 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _819 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _818 = mem[64]
            mem[64] = mem[64] + 64
            mem[_818] = 30
            mem[_818 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[0]):
                _874 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_874 + idx + 68] = mem[_818 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_874 + 68] = mem[_874 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _874 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = w
        mem[mem[64] + 32] = address(x)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _610 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(x), mem[mem[64] + 64 len (32 * _610) + 32]
    idx = 0
    s = 0
    t = 0
    u = 0
    v = 0
    w = -1
    x = 0
    while idx < sub_b1fc7008.length:
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 5
        if not stor5[stor6[idx]]:
            idx = idx + 1
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        require idx < sub_b1fc7008.length
        require ext_code.size(sub_b1fc7008[idx])
        staticcall sub_b1fc7008[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not Mask(112, 0, ext_call.return_data[0]):
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _723 = mem[64]
            mem[64] = mem[64] + 64
            mem[_723] = 30
            mem[_723 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_769 + idx + 68] = mem[_723 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_769 + 68] = mem[_769 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _769 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * arg1:
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _768 = mem[64]
            mem[64] = mem[64] + 64
            mem[_768] = 30
            mem[_768 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _824 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_824 + idx + 68] = mem[_768 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_824 + 68] = mem[_824 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _824 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0]) * arg1
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < sub_b1fc7008.length
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 4
        _823 = mem[64]
        mem[64] = mem[64] + 64
        mem[_823] = 30
        mem[_823 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > Mask(112, 0, ext_call.return_data[32]):
            _879 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_879 + idx + 68] = mem[_823 + idx + 32]
                idx = idx + 32
                continue 
            mem[_879 + 68] = mem[_879 + 70 len 30]
            revert with memory
              from mem[64]
               len _879 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
            revert with 0, 'SafeMath: addition overflow'
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = w
            x = x
            continue 
        require idx < sub_b1fc7008.length
        mem[0] = 6
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[32])
        t = Mask(112, 0, ext_call.return_data[0])
        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        x = sub_b1fc7008[idx]
        continue 
    require 0 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length) + 160] = w
    mem[mem[64] + 32] = address(x)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
    _616 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 64, address(x), mem[mem[64] + 64 len (32 * _616) + 32]
}

function swapExactETHForTokens(uint256 arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Operator'
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg1
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = 32
            mem[(64 * arg3.length) + 196] = 19
            mem[(64 * arg3.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg3.length) + 160
               len (127 * arg3.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = 32
                mem[(64 * arg3.length) + 196] = 12
                mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg3.length) + 160
                   len (127 * arg3.length) + 100
            require 0 < arg3.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[32])
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = 10000 * Mask(112, 0, ext_call.return_data[32])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1333 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1333 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1405 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1405
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1405) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1405) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1405):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1405) >> 32 == Mask(160, 32, _1405) >> 32:
                        _1709 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1709
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1709, address(this.address), 128, 0
                    else:
                        _1710 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1710, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1405) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1711 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1711
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1711, address(this.address), 128, 0
                    else:
                        _1712 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1712, 0, address(this.address), 128, 0
            else:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[0])
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = 10000 * Mask(112, 0, ext_call.return_data[0])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1339 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1339 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1408 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1408
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1408) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1408) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1408):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1408) >> 32 == Mask(160, 32, _1408) >> 32:
                        _1717 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1717
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1717, address(this.address), 128, 0
                    else:
                        _1718 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1718, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1408) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1719 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1719
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1719, address(this.address), 128, 0
                    else:
                        _1720 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1720, 0, address(this.address), 128, 0
        else:
            if not mem[172 len 20]:
                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = 32
                mem[(64 * arg3.length) + 196] = 12
                mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg3.length) + 160
                   len (127 * arg3.length) + 100
            require 0 < arg3.length
            if mem[172 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[32])
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = 10000 * Mask(112, 0, ext_call.return_data[32])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1345 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1345 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1411 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1411
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1411) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1411) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1411):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1411) >> 32 == Mask(160, 32, _1411) >> 32:
                        _1725 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1725
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1725, address(this.address), 128, 0
                    else:
                        _1726 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1726, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1411) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1727 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1727
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1727, address(this.address), 128, 0
                    else:
                        _1728 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1728, 0, address(this.address), 128, 0
            else:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[0])
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = 10000 * Mask(112, 0, ext_call.return_data[0])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1351 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1351 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1414 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1414
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1414) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1414) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1414):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1414) >> 32 == Mask(160, 32, _1414) >> 32:
                        _1733 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1733
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1733, address(this.address), 128, 0
                    else:
                        _1734 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1734, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1414) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1735 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1735
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1735, address(this.address), 128, 0
                    else:
                        _1736 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1736, 0, address(this.address), 128, 0
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg1
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = 32
            mem[(64 * arg3.length) + 196] = 19
            mem[(64 * arg3.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg3.length) + 160
               len (127 * arg3.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = 32
                mem[(64 * arg3.length) + 196] = 12
                mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg3.length) + 160
                   len (127 * arg3.length) + 100
            require 0 < arg3.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[32])
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = 10000 * Mask(112, 0, ext_call.return_data[32])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1357 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1357 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1417 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1417
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1417) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1417) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1417):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1417) >> 32 == Mask(160, 32, _1417) >> 32:
                        _1741 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1741
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1741, address(this.address), 128, 0
                    else:
                        _1742 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1742, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1417) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1743 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1743
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1743, address(this.address), 128, 0
                    else:
                        _1744 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1744, 0, address(this.address), 128, 0
            else:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[0])
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = 10000 * Mask(112, 0, ext_call.return_data[0])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1363 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1363 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1420 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1420
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1420) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1420) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1420):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1420) >> 32 == Mask(160, 32, _1420) >> 32:
                        _1749 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1749
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1749, address(this.address), 128, 0
                    else:
                        _1750 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1750, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1420) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1751 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1751
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1751, address(this.address), 128, 0
                    else:
                        _1752 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1752, 0, address(this.address), 128, 0
        else:
            if not mem[172 len 20]:
                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = 32
                mem[(64 * arg3.length) + 196] = 12
                mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg3.length) + 160
                   len (127 * arg3.length) + 100
            require 0 < arg3.length
            if mem[172 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[32])
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                t = Mask(112, 0, ext_call.return_data[32])
                                u = 10000 * Mask(112, 0, ext_call.return_data[32])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = 10000 * Mask(112, 0, ext_call.return_data[32])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[0])
                                        t = Mask(112, 0, ext_call.return_data[32])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    t = Mask(112, 0, ext_call.return_data[32])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1369 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1369 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1423 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1423
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1423) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1423) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1423):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1423) >> 32 == Mask(160, 32, _1423) >> 32:
                        _1757 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1757
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1757, address(this.address), 128, 0
                    else:
                        _1758 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1758, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1423) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1759 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1759
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1759, address(this.address), 128, 0
                    else:
                        _1760 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1760, 0, address(this.address), 128, 0
            else:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = 0
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[(64 * arg3.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                           args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    if not arg1:
                        require Mask(112, 0, ext_call.return_data[0])
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= w:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                t = Mask(112, 0, ext_call.return_data[0])
                                u = 10000 * Mask(112, 0, ext_call.return_data[0])
                                v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                w = w
                                x = x
                                continue 
                            require idx < sub_b1fc7008.length
                            mem[0] = 6
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            t = Mask(112, 0, ext_call.return_data[0])
                            u = 10000 * Mask(112, 0, ext_call.return_data[0])
                            v = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            w = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            x = sub_b1fc7008[idx]
                            continue 
                    else:
                        require arg1
                        if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg3.length) + 164] = 32
                            mem[(64 * arg3.length) + 196] = 33
                            mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg3.length) + 160
                               len (127 * arg3.length) + 132
                        if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                        else:
                            require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg3.length) + 164] = 32
                                mem[(64 * arg3.length) + 196] = 33
                                mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg3.length) + 160
                                   len (127 * arg3.length) + 132
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                    require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + 164] = 32
                                    mem[(64 * arg3.length) + 196] = 33
                                    mem[(64 * arg3.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                    revert with memory
                                      from (64 * arg3.length) + 160
                                       len (127 * arg3.length) + 132
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= w:
                                        idx = idx + 1
                                        s = Mask(112, 0, ext_call.return_data[32])
                                        t = Mask(112, 0, ext_call.return_data[0])
                                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                        w = w
                                        x = x
                                        continue 
                                    require idx < sub_b1fc7008.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    v = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    w = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    x = sub_b1fc7008[idx]
                                    continue 
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 27
                    mem[(64 * arg3.length) + 228] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 100
                require arg3.length - 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = w
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                if mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160] < arg2:
                    mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 164] = 32
                    mem[(64 * arg3.length) + 196] = 40
                    mem[(64 * arg3.length) + 228 len 40] = 0x54536d617274537761704253433a20494e53554646494349454e545f4f55545055545f414d4f554e
                    revert with memory
                      from (64 * arg3.length) + 160
                       len (127 * arg3.length) + 132
                require 0 < mem[(32 * arg3.length) + 128]
                _1375 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value _1375 wei
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len 127 * arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[(32 * arg3.length) + 128]
                _1426 = mem[(32 * arg3.length) + 160]
                mem[(64 * arg3.length) + 164] = address(x)
                mem[(64 * arg3.length) + 196] = _1426
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * arg3.length) + 164 len (127 * arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(64 * arg3.length) + 160] = arg3.length
                mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(98 * arg3.length) + 192] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if Mask(160, 32, _1426) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if Mask(160, 32, _1426) >> 32 < mem[(64 * arg3.length) + 236 len 20]:
                    if not Mask(160, 32, _1426):
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1426) >> 32 == Mask(160, 32, _1426) >> 32:
                        _1765 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1765
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1765, address(this.address), 128, 0
                    else:
                        _1766 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1766, 0, address(this.address), 128, 0
                else:
                    if not mem[(64 * arg3.length) + 236 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if Mask(160, 32, _1426) >> 32 == mem[(64 * arg3.length) + 236 len 20]:
                        _1767 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = _1767
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1767, address(this.address), 128, 0
                    else:
                        _1768 = mem[(32 * arg3.length) + 192]
                        mem[(3 * 32 * arg3.length) + 192] = 0
                        mem[(3 * 32 * arg3.length) + 260] = 0
                        mem[(3 * 32 * arg3.length) + 292] = this.address
                        mem[(3 * 32 * arg3.length) + 324] = 128
                        mem[(3 * 32 * arg3.length) + 356] = 0
                        mem[(3 * 32 * arg3.length) + 388 len 0] = None
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1768, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(3 * 32 * arg3.length) + 224] = 32
    mem[(3 * 32 * arg3.length) + 256] = mem[(32 * arg3.length) + 128]
    mem[(3 * 32 * arg3.length) + 288 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(3 * 32 * arg3.length) + 256 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Operator'
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg1
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = 32
            mem[(64 * arg3.length) + 196] = 19
            mem[(64 * arg3.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg3.length) + 160
               len (127 * arg3.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = 32
                mem[(64 * arg3.length) + 196] = 12
                mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg3.length) + 160
                   len (127 * arg3.length) + 100
            require 0 < arg3.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                t = 0
                u = 0
                v = 0
                w = -1
                x = 0
                while idx < sub_b1fc7008.length:
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 5
                    if not stor5[stor6[idx]]:
                        idx = idx + 1
                        s = s
                        t = t
                        u = u
                        v = v
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _1921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1921] = 30
                        mem[_1921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _1964 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1964 + idx + 68] = mem[_1921 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1964 + 68] = mem[_1964 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1964 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        x = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _1963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1963] = 30
                        mem[_1963 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _2058 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2058 + idx + 68] = mem[_1963 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2058 + 68] = mem[_2058 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2058 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            t = Mask(112, 0, ext_call.return_data[32])
                            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            w = w
                            x = x
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        x = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32]) * arg1
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _2057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2057] = 30
                    mem[_2057 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _2163 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2163 + idx + 68] = mem[_2057 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2163 + 68] = mem[_2163 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2163 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require 0 < mem[(32 * arg3.length) + 128]
                mem[(32 * arg3.length) + 160] = w
                require 0 < mem[(32 * arg3.length) + 128]
                if w > arg2:
                    revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
                require 0 < arg3.length
                require 0 < mem[(32 * arg3.length) + 128]
                mem[mem[64] + 4] = address(x)
                mem[mem[64] + 36] = w
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(x), w
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1824 = mem[64]
                mem[64] = mem[64] + (32 * arg3.length) + 32
                mem[_1824] = arg3.length
                mem[_1824 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[_1824 + (32 * arg3.length) + 32] = 0
                require 0 < arg3.length
                require 1 < arg3.length
                if mem[_1824 + 44 len 20] == mem[_1824 + 76 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[_1824 + 44 len 20] < mem[_1824 + 76 len 20]:
                    if not mem[_1824 + 44 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < arg3.length
                    require 1 < mem[(32 * arg3.length) + 128]
                    if mem[_1824 + 44 len 20] == mem[_1824 + 44 len 20]:
                        _2159 = mem[(32 * arg3.length) + 192]
                        _2247 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2247 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2247 + 36] = 0
                        mem[_2247 + 68] = _2159
                        mem[_2247 + 100] = this.address
                        mem[_2247 + 132] = 128
                        mem[_2247 + 164] = mem[_2247]
                        mem[_2247 + 196 len ceil32(mem[_2247])] = mem[_2247 + 32 len ceil32(mem[_2247])]
                        if not mem[_2247] % 32:
                            require ext_code.size(address(x))
                            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2159, address(this.address), 128, mem[_2247 + 164 len mem[_2247] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                            _3591 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                            mem[_2247 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args _3591
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2247 + 32] = 32
                            mem[_2247 + 64] = mem[(32 * arg3.length) + 128]
                            _3849 = mem[(32 * arg3.length) + 128]
                            mem[_2247 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                            return memory
                              from mem[64]
                               len (32 * _3849) + _2247 + -mem[64] + 96
                        mem[floor32(mem[_2247]) + _2247 + 196] = mem[floor32(mem[_2247]) + _2247 + -(mem[_2247] % 32) + 228 len mem[_2247] % 32]
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2159, address(this.address), 128, mem[_2247], mem[_2247 + 196 len floor32(mem[_2247]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3751 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2247 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3751
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2247 + 32] = 32
                        mem[_2247 + 64] = mem[(32 * arg3.length) + 128]
                        _3945 = mem[(32 * arg3.length) + 128]
                        mem[_2247 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3945) + _2247 + -mem[64] + 96
                    _2160 = mem[(32 * arg3.length) + 192]
                    _2248 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2248 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2248 + 36] = _2160
                    mem[_2248 + 68] = 0
                    mem[_2248 + 100] = this.address
                    mem[_2248 + 132] = 128
                    mem[_2248 + 164] = mem[_2248]
                    mem[_2248 + 196 len ceil32(mem[_2248])] = mem[_2248 + 32 len ceil32(mem[_2248])]
                    if not mem[_2248] % 32:
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2160, 0, address(this.address), 128, mem[_2248 + 164 len mem[_2248] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3596 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2248 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3596
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2248 + 32] = 32
                        mem[_2248 + 64] = mem[(32 * arg3.length) + 128]
                        _3852 = mem[(32 * arg3.length) + 128]
                        mem[_2248 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3852) + _2248 + -mem[64] + 96
                    mem[floor32(mem[_2248]) + _2248 + 196] = mem[floor32(mem[_2248]) + _2248 + -(mem[_2248] % 32) + 228 len mem[_2248] % 32]
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2160, 0, address(this.address), 128, mem[_2248], mem[_2248 + 196 len floor32(mem[_2248]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3754 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2248 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3754
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2248 + 32] = 32
                    mem[_2248 + 64] = mem[(32 * arg3.length) + 128]
                    _3948 = mem[(32 * arg3.length) + 128]
                    mem[_2248 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3948) + _2248 + -mem[64] + 96
                if not mem[_1824 + 76 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < arg3.length
                require 1 < mem[(32 * arg3.length) + 128]
                if mem[_1824 + 44 len 20] == mem[_1824 + 76 len 20]:
                    _2161 = mem[(32 * arg3.length) + 192]
                    _2249 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2249 + 36] = 0
                    mem[_2249 + 68] = _2161
                    mem[_2249 + 100] = this.address
                    mem[_2249 + 132] = 128
                    mem[_2249 + 164] = mem[_2249]
                    mem[_2249 + 196 len ceil32(mem[_2249])] = mem[_2249 + 32 len ceil32(mem[_2249])]
                    if not mem[_2249] % 32:
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2161, address(this.address), 128, mem[_2249 + 164 len mem[_2249] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3601 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2249 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3601
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2249 + 32] = 32
                        mem[_2249 + 64] = mem[(32 * arg3.length) + 128]
                        _3855 = mem[(32 * arg3.length) + 128]
                        mem[_2249 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3855) + _2249 + -mem[64] + 96
                    mem[floor32(mem[_2249]) + _2249 + 196] = mem[floor32(mem[_2249]) + _2249 + -(mem[_2249] % 32) + 228 len mem[_2249] % 32]
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2161, address(this.address), 128, mem[_2249], mem[_2249 + 196 len floor32(mem[_2249]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3757 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2249 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3757
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2249 + 32] = 32
                    mem[_2249 + 64] = mem[(32 * arg3.length) + 128]
                    _3951 = mem[(32 * arg3.length) + 128]
                    mem[_2249 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3951) + _2249 + -mem[64] + 96
                _2162 = mem[(32 * arg3.length) + 192]
                _2250 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2250 + 36] = _2162
                mem[_2250 + 68] = 0
                mem[_2250 + 100] = this.address
                mem[_2250 + 132] = 128
                mem[_2250 + 164] = mem[_2250]
                mem[_2250 + 196 len ceil32(mem[_2250])] = mem[_2250 + 32 len ceil32(mem[_2250])]
                if not mem[_2250] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2162, 0, address(this.address), 128, mem[_2250 + 164 len mem[_2250] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3606 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2250 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2250 + 32] = 32
                    mem[_2250 + 64] = mem[(32 * arg3.length) + 128]
                    _3858 = mem[(32 * arg3.length) + 128]
                    mem[_2250 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3858) + _2250 + -mem[64] + 96
                mem[floor32(mem[_2250]) + _2250 + 196] = mem[floor32(mem[_2250]) + _2250 + -(mem[_2250] % 32) + 228 len mem[_2250] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2162, 0, address(this.address), 128, mem[_2250], mem[_2250 + 196 len floor32(mem[_2250]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3760 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2250 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3760
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2250 + 32] = 32
                mem[_2250 + 64] = mem[(32 * arg3.length) + 128]
                _3954 = mem[(32 * arg3.length) + 128]
                mem[_2250 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3954) + _2250 + -mem[64] + 96
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[0]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1924] = 30
                    mem[_1924 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _1972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1972 + idx + 68] = mem[_1924 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1972 + 68] = mem[_1972 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1972 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1971] = 30
                    mem[_1971 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _2065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2065 + idx + 68] = mem[_1971 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2065 + 68] = mem[_2065 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2065 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        t = Mask(112, 0, ext_call.return_data[0])
                        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _2064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2064] = 30
                mem[_2064 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _2172 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2172 + idx + 68] = mem[_2064 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2172 + 68] = mem[_2172 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2172 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg3.length) + 128]
            mem[(32 * arg3.length) + 160] = w
            require 0 < mem[(32 * arg3.length) + 128]
            if w > arg2:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < arg3.length
            require 0 < mem[(32 * arg3.length) + 128]
            mem[mem[64] + 4] = address(x)
            mem[mem[64] + 36] = w
            require ext_code.size(address(cd[(arg3 + 36)]))
            call address(cd[(arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(x), w
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1828 = mem[64]
            mem[64] = mem[64] + (32 * arg3.length) + 32
            mem[_1828] = arg3.length
            mem[_1828 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[_1828 + (32 * arg3.length) + 32] = 0
            require 0 < arg3.length
            require 1 < arg3.length
            if mem[_1828 + 44 len 20] == mem[_1828 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1828 + 44 len 20] < mem[_1828 + 76 len 20]:
                if not mem[_1828 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < arg3.length
                require 1 < mem[(32 * arg3.length) + 128]
                if mem[_1828 + 44 len 20] == mem[_1828 + 44 len 20]:
                    _2168 = mem[(32 * arg3.length) + 192]
                    _2255 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2255 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2255 + 36] = 0
                    mem[_2255 + 68] = _2168
                    mem[_2255 + 100] = this.address
                    mem[_2255 + 132] = 128
                    mem[_2255 + 164] = mem[_2255]
                    mem[_2255 + 196 len ceil32(mem[_2255])] = mem[_2255 + 32 len ceil32(mem[_2255])]
                    if not mem[_2255] % 32:
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2168, address(this.address), 128, mem[_2255 + 164 len mem[_2255] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3611 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2255 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3611
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2255 + 32] = 32
                        mem[_2255 + 64] = mem[(32 * arg3.length) + 128]
                        _3861 = mem[(32 * arg3.length) + 128]
                        mem[_2255 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3861) + _2255 + -mem[64] + 96
                    mem[floor32(mem[_2255]) + _2255 + 196] = mem[floor32(mem[_2255]) + _2255 + -(mem[_2255] % 32) + 228 len mem[_2255] % 32]
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2168, address(this.address), 128, mem[_2255], mem[_2255 + 196 len floor32(mem[_2255]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3763 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2255 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3763
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2255 + 32] = 32
                    mem[_2255 + 64] = mem[(32 * arg3.length) + 128]
                    _3957 = mem[(32 * arg3.length) + 128]
                    mem[_2255 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3957) + _2255 + -mem[64] + 96
                _2169 = mem[(32 * arg3.length) + 192]
                _2256 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2256 + 36] = _2169
                mem[_2256 + 68] = 0
                mem[_2256 + 100] = this.address
                mem[_2256 + 132] = 128
                mem[_2256 + 164] = mem[_2256]
                mem[_2256 + 196 len ceil32(mem[_2256])] = mem[_2256 + 32 len ceil32(mem[_2256])]
                if not mem[_2256] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2169, 0, address(this.address), 128, mem[_2256 + 164 len mem[_2256] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3616 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2256 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3616
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2256 + 32] = 32
                    mem[_2256 + 64] = mem[(32 * arg3.length) + 128]
                    _3864 = mem[(32 * arg3.length) + 128]
                    mem[_2256 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3864) + _2256 + -mem[64] + 96
                mem[floor32(mem[_2256]) + _2256 + 196] = mem[floor32(mem[_2256]) + _2256 + -(mem[_2256] % 32) + 228 len mem[_2256] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2169, 0, address(this.address), 128, mem[_2256], mem[_2256 + 196 len floor32(mem[_2256]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3766 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2256 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3766
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2256 + 32] = 32
                mem[_2256 + 64] = mem[(32 * arg3.length) + 128]
                _3960 = mem[(32 * arg3.length) + 128]
                mem[_2256 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3960) + _2256 + -mem[64] + 96
            if not mem[_1828 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1828 + 44 len 20] == mem[_1828 + 76 len 20]:
                _2170 = mem[(32 * arg3.length) + 192]
                _2257 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2257 + 36] = 0
                mem[_2257 + 68] = _2170
                mem[_2257 + 100] = this.address
                mem[_2257 + 132] = 128
                mem[_2257 + 164] = mem[_2257]
                mem[_2257 + 196 len ceil32(mem[_2257])] = mem[_2257 + 32 len ceil32(mem[_2257])]
                if not mem[_2257] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2170, address(this.address), 128, mem[_2257 + 164 len mem[_2257] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3621 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2257 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3621
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2257 + 32] = 32
                    mem[_2257 + 64] = mem[(32 * arg3.length) + 128]
                    _3867 = mem[(32 * arg3.length) + 128]
                    mem[_2257 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3867) + _2257 + -mem[64] + 96
                mem[floor32(mem[_2257]) + _2257 + 196] = mem[floor32(mem[_2257]) + _2257 + -(mem[_2257] % 32) + 228 len mem[_2257] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2170, address(this.address), 128, mem[_2257], mem[_2257 + 196 len floor32(mem[_2257]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3769 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2257 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3769
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2257 + 32] = 32
                mem[_2257 + 64] = mem[(32 * arg3.length) + 128]
                _3963 = mem[(32 * arg3.length) + 128]
                mem[_2257 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3963) + _2257 + -mem[64] + 96
            _2171 = mem[(32 * arg3.length) + 192]
            _2258 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2258 + 36] = _2171
            mem[_2258 + 68] = 0
            mem[_2258 + 100] = this.address
            mem[_2258 + 132] = 128
            mem[_2258 + 164] = mem[_2258]
            mem[_2258 + 196 len ceil32(mem[_2258])] = mem[_2258 + 32 len ceil32(mem[_2258])]
            if not mem[_2258] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2171, 0, address(this.address), 128, mem[_2258 + 164 len mem[_2258] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3626 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2258 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3626
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2258 + 32] = 32
                mem[_2258 + 64] = mem[(32 * arg3.length) + 128]
                _3870 = mem[(32 * arg3.length) + 128]
                mem[_2258 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3870) + _2258 + -mem[64] + 96
            mem[floor32(mem[_2258]) + _2258 + 196] = mem[floor32(mem[_2258]) + _2258 + -(mem[_2258] % 32) + 228 len mem[_2258] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2171, 0, address(this.address), 128, mem[_2258], mem[_2258 + 196 len floor32(mem[_2258]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3772 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2258 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3772
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2258 + 32] = 32
            mem[_2258 + 64] = mem[(32 * arg3.length) + 128]
            _3966 = mem[(32 * arg3.length) + 128]
            mem[_2258 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3966) + _2258 + -mem[64] + 96
        if not mem[172 len 20]:
            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = 32
            mem[(64 * arg3.length) + 196] = 12
            mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg3.length) + 160
               len (127 * arg3.length) + 100
        require 0 < arg3.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1927] = 30
                    mem[_1927 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _1980 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1980 + idx + 68] = mem[_1927 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1980 + 68] = mem[_1980 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1980 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1979] = 30
                    mem[_1979 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _2072 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2072 + idx + 68] = mem[_1979 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2072 + 68] = mem[_2072 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2072 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _2071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2071] = 30
                mem[_2071 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _2181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2181 + idx + 68] = mem[_2071 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2181 + 68] = mem[_2181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2181 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg3.length) + 128]
            mem[(32 * arg3.length) + 160] = w
            require 0 < mem[(32 * arg3.length) + 128]
            if w > arg2:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < arg3.length
            require 0 < mem[(32 * arg3.length) + 128]
            mem[mem[64] + 4] = address(x)
            mem[mem[64] + 36] = w
            require ext_code.size(address(cd[(arg3 + 36)]))
            call address(cd[(arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(x), w
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1832 = mem[64]
            mem[64] = mem[64] + (32 * arg3.length) + 32
            mem[_1832] = arg3.length
            mem[_1832 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[_1832 + (32 * arg3.length) + 32] = 0
            require 0 < arg3.length
            require 1 < arg3.length
            if mem[_1832 + 44 len 20] == mem[_1832 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1832 + 44 len 20] < mem[_1832 + 76 len 20]:
                if not mem[_1832 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < arg3.length
                require 1 < mem[(32 * arg3.length) + 128]
                if mem[_1832 + 44 len 20] == mem[_1832 + 44 len 20]:
                    _2177 = mem[(32 * arg3.length) + 192]
                    _2263 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2263 + 36] = 0
                    mem[_2263 + 68] = _2177
                    mem[_2263 + 100] = this.address
                    mem[_2263 + 132] = 128
                    mem[_2263 + 164] = mem[_2263]
                    mem[_2263 + 196 len ceil32(mem[_2263])] = mem[_2263 + 32 len ceil32(mem[_2263])]
                    if not mem[_2263] % 32:
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2177, address(this.address), 128, mem[_2263 + 164 len mem[_2263] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3631 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2263 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3631
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2263 + 32] = 32
                        mem[_2263 + 64] = mem[(32 * arg3.length) + 128]
                        _3873 = mem[(32 * arg3.length) + 128]
                        mem[_2263 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3873) + _2263 + -mem[64] + 96
                    mem[floor32(mem[_2263]) + _2263 + 196] = mem[floor32(mem[_2263]) + _2263 + -(mem[_2263] % 32) + 228 len mem[_2263] % 32]
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2177, address(this.address), 128, mem[_2263], mem[_2263 + 196 len floor32(mem[_2263]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3775 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2263 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3775
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2263 + 32] = 32
                    mem[_2263 + 64] = mem[(32 * arg3.length) + 128]
                    _3969 = mem[(32 * arg3.length) + 128]
                    mem[_2263 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3969) + _2263 + -mem[64] + 96
                _2178 = mem[(32 * arg3.length) + 192]
                _2264 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2264 + 36] = _2178
                mem[_2264 + 68] = 0
                mem[_2264 + 100] = this.address
                mem[_2264 + 132] = 128
                mem[_2264 + 164] = mem[_2264]
                mem[_2264 + 196 len ceil32(mem[_2264])] = mem[_2264 + 32 len ceil32(mem[_2264])]
                if not mem[_2264] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2178, 0, address(this.address), 128, mem[_2264 + 164 len mem[_2264] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3636 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2264 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3636
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2264 + 32] = 32
                    mem[_2264 + 64] = mem[(32 * arg3.length) + 128]
                    _3876 = mem[(32 * arg3.length) + 128]
                    mem[_2264 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3876) + _2264 + -mem[64] + 96
                mem[floor32(mem[_2264]) + _2264 + 196] = mem[floor32(mem[_2264]) + _2264 + -(mem[_2264] % 32) + 228 len mem[_2264] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2178, 0, address(this.address), 128, mem[_2264], mem[_2264 + 196 len floor32(mem[_2264]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3778 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2264 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3778
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2264 + 32] = 32
                mem[_2264 + 64] = mem[(32 * arg3.length) + 128]
                _3972 = mem[(32 * arg3.length) + 128]
                mem[_2264 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3972) + _2264 + -mem[64] + 96
            if not mem[_1832 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1832 + 44 len 20] == mem[_1832 + 76 len 20]:
                _2179 = mem[(32 * arg3.length) + 192]
                _2265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2265 + 36] = 0
                mem[_2265 + 68] = _2179
                mem[_2265 + 100] = this.address
                mem[_2265 + 132] = 128
                mem[_2265 + 164] = mem[_2265]
                mem[_2265 + 196 len ceil32(mem[_2265])] = mem[_2265 + 32 len ceil32(mem[_2265])]
                if not mem[_2265] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2179, address(this.address), 128, mem[_2265 + 164 len mem[_2265] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3641 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2265 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3641
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2265 + 32] = 32
                    mem[_2265 + 64] = mem[(32 * arg3.length) + 128]
                    _3879 = mem[(32 * arg3.length) + 128]
                    mem[_2265 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3879) + _2265 + -mem[64] + 96
                mem[floor32(mem[_2265]) + _2265 + 196] = mem[floor32(mem[_2265]) + _2265 + -(mem[_2265] % 32) + 228 len mem[_2265] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2179, address(this.address), 128, mem[_2265], mem[_2265 + 196 len floor32(mem[_2265]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3781 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2265 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3781
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2265 + 32] = 32
                mem[_2265 + 64] = mem[(32 * arg3.length) + 128]
                _3975 = mem[(32 * arg3.length) + 128]
                mem[_2265 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3975) + _2265 + -mem[64] + 96
            _2180 = mem[(32 * arg3.length) + 192]
            _2266 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2266 + 36] = _2180
            mem[_2266 + 68] = 0
            mem[_2266 + 100] = this.address
            mem[_2266 + 132] = 128
            mem[_2266 + 164] = mem[_2266]
            mem[_2266 + 196 len ceil32(mem[_2266])] = mem[_2266 + 32 len ceil32(mem[_2266])]
            if not mem[_2266] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2180, 0, address(this.address), 128, mem[_2266 + 164 len mem[_2266] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3646 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2266 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3646
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2266 + 32] = 32
                mem[_2266 + 64] = mem[(32 * arg3.length) + 128]
                _3882 = mem[(32 * arg3.length) + 128]
                mem[_2266 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3882) + _2266 + -mem[64] + 96
            mem[floor32(mem[_2266]) + _2266 + 196] = mem[floor32(mem[_2266]) + _2266 + -(mem[_2266] % 32) + 228 len mem[_2266] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2180, 0, address(this.address), 128, mem[_2266], mem[_2266 + 196 len floor32(mem[_2266]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3784 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2266 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3784
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2266 + 32] = 32
            mem[_2266 + 64] = mem[(32 * arg3.length) + 128]
            _3978 = mem[(32 * arg3.length) + 128]
            mem[_2266 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3978) + _2266 + -mem[64] + 96
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1930 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1930] = 30
                mem[_1930 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _1988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1988 + idx + 68] = mem[_1930 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1988 + 68] = mem[_1988 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1988 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1987] = 30
                mem[_1987 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _2079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2079 + idx + 68] = mem[_1987 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2079 + 68] = mem[_2079 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2079 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _2078 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2078] = 30
            mem[_2078 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _2190 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2190 + idx + 68] = mem[_2078 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2190 + 68] = mem[_2190 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2190 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg3.length) + 128]
        mem[(32 * arg3.length) + 160] = w
        require 0 < mem[(32 * arg3.length) + 128]
        if w > arg2:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < arg3.length
        require 0 < mem[(32 * arg3.length) + 128]
        mem[mem[64] + 4] = address(x)
        mem[mem[64] + 36] = w
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(x), w
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1836 = mem[64]
        mem[64] = mem[64] + (32 * arg3.length) + 32
        mem[_1836] = arg3.length
        mem[_1836 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[_1836 + (32 * arg3.length) + 32] = 0
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[_1836 + 44 len 20] == mem[_1836 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1836 + 44 len 20] < mem[_1836 + 76 len 20]:
            if not mem[_1836 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1836 + 44 len 20] == mem[_1836 + 44 len 20]:
                _2186 = mem[(32 * arg3.length) + 192]
                _2271 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2271 + 36] = 0
                mem[_2271 + 68] = _2186
                mem[_2271 + 100] = this.address
                mem[_2271 + 132] = 128
                mem[_2271 + 164] = mem[_2271]
                mem[_2271 + 196 len ceil32(mem[_2271])] = mem[_2271 + 32 len ceil32(mem[_2271])]
                if not mem[_2271] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2186, address(this.address), 128, mem[_2271 + 164 len mem[_2271] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3651 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2271 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3651
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2271 + 32] = 32
                    mem[_2271 + 64] = mem[(32 * arg3.length) + 128]
                    _3885 = mem[(32 * arg3.length) + 128]
                    mem[_2271 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3885) + _2271 + -mem[64] + 96
                mem[floor32(mem[_2271]) + _2271 + 196] = mem[floor32(mem[_2271]) + _2271 + -(mem[_2271] % 32) + 228 len mem[_2271] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2186, address(this.address), 128, mem[_2271], mem[_2271 + 196 len floor32(mem[_2271]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3787 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2271 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3787
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2271 + 32] = 32
                mem[_2271 + 64] = mem[(32 * arg3.length) + 128]
                _3981 = mem[(32 * arg3.length) + 128]
                mem[_2271 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3981) + _2271 + -mem[64] + 96
            _2187 = mem[(32 * arg3.length) + 192]
            _2272 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2272 + 36] = _2187
            mem[_2272 + 68] = 0
            mem[_2272 + 100] = this.address
            mem[_2272 + 132] = 128
            mem[_2272 + 164] = mem[_2272]
            mem[_2272 + 196 len ceil32(mem[_2272])] = mem[_2272 + 32 len ceil32(mem[_2272])]
            if not mem[_2272] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2187, 0, address(this.address), 128, mem[_2272 + 164 len mem[_2272] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3656 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2272 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3656
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2272 + 32] = 32
                mem[_2272 + 64] = mem[(32 * arg3.length) + 128]
                _3888 = mem[(32 * arg3.length) + 128]
                mem[_2272 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3888) + _2272 + -mem[64] + 96
            mem[floor32(mem[_2272]) + _2272 + 196] = mem[floor32(mem[_2272]) + _2272 + -(mem[_2272] % 32) + 228 len mem[_2272] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2187, 0, address(this.address), 128, mem[_2272], mem[_2272 + 196 len floor32(mem[_2272]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3790 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2272 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3790
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2272 + 32] = 32
            mem[_2272 + 64] = mem[(32 * arg3.length) + 128]
            _3984 = mem[(32 * arg3.length) + 128]
            mem[_2272 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3984) + _2272 + -mem[64] + 96
        if not mem[_1836 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < arg3.length
        require 1 < mem[(32 * arg3.length) + 128]
        if mem[_1836 + 44 len 20] == mem[_1836 + 76 len 20]:
            _2188 = mem[(32 * arg3.length) + 192]
            _2273 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2273 + 36] = 0
            mem[_2273 + 68] = _2188
            mem[_2273 + 100] = this.address
            mem[_2273 + 132] = 128
            mem[_2273 + 164] = mem[_2273]
            mem[_2273 + 196 len ceil32(mem[_2273])] = mem[_2273 + 32 len ceil32(mem[_2273])]
            if not mem[_2273] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2188, address(this.address), 128, mem[_2273 + 164 len mem[_2273] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3661 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2273 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3661
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2273 + 32] = 32
                mem[_2273 + 64] = mem[(32 * arg3.length) + 128]
                _3891 = mem[(32 * arg3.length) + 128]
                mem[_2273 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3891) + _2273 + -mem[64] + 96
            mem[floor32(mem[_2273]) + _2273 + 196] = mem[floor32(mem[_2273]) + _2273 + -(mem[_2273] % 32) + 228 len mem[_2273] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _2188, address(this.address), 128, mem[_2273], mem[_2273 + 196 len floor32(mem[_2273]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3793 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2273 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3793
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2273 + 32] = 32
            mem[_2273 + 64] = mem[(32 * arg3.length) + 128]
            _3987 = mem[(32 * arg3.length) + 128]
            mem[_2273 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3987) + _2273 + -mem[64] + 96
        _2189 = mem[(32 * arg3.length) + 192]
        _2274 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_2274 + 36] = _2189
        mem[_2274 + 68] = 0
        mem[_2274 + 100] = this.address
        mem[_2274 + 132] = 128
        mem[_2274 + 164] = mem[_2274]
        mem[_2274 + 196 len ceil32(mem[_2274])] = mem[_2274 + 32 len ceil32(mem[_2274])]
        if not mem[_2274] % 32:
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2189, 0, address(this.address), 128, mem[_2274 + 164 len mem[_2274] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3666 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2274 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3666
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2274 + 32] = 32
            mem[_2274 + 64] = mem[(32 * arg3.length) + 128]
            _3894 = mem[(32 * arg3.length) + 128]
            mem[_2274 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3894) + _2274 + -mem[64] + 96
        mem[floor32(mem[_2274]) + _2274 + 196] = mem[floor32(mem[_2274]) + _2274 + -(mem[_2274] % 32) + 228 len mem[_2274] % 32]
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _2189, 0, address(this.address), 128, mem[_2274], mem[_2274 + 196 len floor32(mem[_2274]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3796 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2274 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3796
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2274 + 32] = 32
        mem[_2274 + 64] = mem[(32 * arg3.length) + 128]
        _3990 = mem[(32 * arg3.length) + 128]
        mem[_2274 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _3990) + _2274 + -mem[64] + 96
    mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    require arg3.length - 1 < arg3.length
    mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg1
    require 0 < arg3.length
    require 1 < arg3.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + 164] = 32
        mem[(64 * arg3.length) + 196] = 19
        mem[(64 * arg3.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg3.length) + 160
           len (127 * arg3.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = 32
            mem[(64 * arg3.length) + 196] = 12
            mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg3.length) + 160
               len (127 * arg3.length) + 100
        require 0 < arg3.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            t = 0
            u = 0
            v = 0
            w = -1
            x = 0
            while idx < sub_b1fc7008.length:
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 5
                if not stor5[stor6[idx]]:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1933] = 30
                    mem[_1933 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _1996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1996 + idx + 68] = mem[_1933 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1996 + 68] = mem[_1996 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1996 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1995] = 30
                    mem[_1995 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _2086 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2086 + idx + 68] = mem[_1995 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2086 + 68] = mem[_2086 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2086 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        t = Mask(112, 0, ext_call.return_data[32])
                        u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        w = w
                        x = x
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    x = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _2085 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2085] = 30
                mem[_2085 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _2199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2199 + idx + 68] = mem[_2085 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2199 + 68] = mem[_2199 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2199 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg3.length) + 128]
            mem[(32 * arg3.length) + 160] = w
            require 0 < mem[(32 * arg3.length) + 128]
            if w > arg2:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < arg3.length
            require 0 < mem[(32 * arg3.length) + 128]
            mem[mem[64] + 4] = address(x)
            mem[mem[64] + 36] = w
            require ext_code.size(address(cd[(arg3 + 36)]))
            call address(cd[(arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(x), w
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1840 = mem[64]
            mem[64] = mem[64] + (32 * arg3.length) + 32
            mem[_1840] = arg3.length
            mem[_1840 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[_1840 + (32 * arg3.length) + 32] = 0
            require 0 < arg3.length
            require 1 < arg3.length
            if mem[_1840 + 44 len 20] == mem[_1840 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1840 + 44 len 20] < mem[_1840 + 76 len 20]:
                if not mem[_1840 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < arg3.length
                require 1 < mem[(32 * arg3.length) + 128]
                if mem[_1840 + 44 len 20] == mem[_1840 + 44 len 20]:
                    _2195 = mem[(32 * arg3.length) + 192]
                    _2279 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2279 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2279 + 36] = 0
                    mem[_2279 + 68] = _2195
                    mem[_2279 + 100] = this.address
                    mem[_2279 + 132] = 128
                    mem[_2279 + 164] = mem[_2279]
                    mem[_2279 + 196 len ceil32(mem[_2279])] = mem[_2279 + 32 len ceil32(mem[_2279])]
                    if not mem[_2279] % 32:
                        require ext_code.size(address(x))
                        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2195, address(this.address), 128, mem[_2279 + 164 len mem[_2279] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                        _3671 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        mem[_2279 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _3671
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2279 + 32] = 32
                        mem[_2279 + 64] = mem[(32 * arg3.length) + 128]
                        _3897 = mem[(32 * arg3.length) + 128]
                        mem[_2279 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _3897) + _2279 + -mem[64] + 96
                    mem[floor32(mem[_2279]) + _2279 + 196] = mem[floor32(mem[_2279]) + _2279 + -(mem[_2279] % 32) + 228 len mem[_2279] % 32]
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2195, address(this.address), 128, mem[_2279], mem[_2279 + 196 len floor32(mem[_2279]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3799 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2279 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3799
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2279 + 32] = 32
                    mem[_2279 + 64] = mem[(32 * arg3.length) + 128]
                    _3993 = mem[(32 * arg3.length) + 128]
                    mem[_2279 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3993) + _2279 + -mem[64] + 96
                _2196 = mem[(32 * arg3.length) + 192]
                _2280 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2280 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2280 + 36] = _2196
                mem[_2280 + 68] = 0
                mem[_2280 + 100] = this.address
                mem[_2280 + 132] = 128
                mem[_2280 + 164] = mem[_2280]
                mem[_2280 + 196 len ceil32(mem[_2280])] = mem[_2280 + 32 len ceil32(mem[_2280])]
                if not mem[_2280] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2196, 0, address(this.address), 128, mem[_2280 + 164 len mem[_2280] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3676 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2280 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3676
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2280 + 32] = 32
                    mem[_2280 + 64] = mem[(32 * arg3.length) + 128]
                    _3900 = mem[(32 * arg3.length) + 128]
                    mem[_2280 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3900) + _2280 + -mem[64] + 96
                mem[floor32(mem[_2280]) + _2280 + 196] = mem[floor32(mem[_2280]) + _2280 + -(mem[_2280] % 32) + 228 len mem[_2280] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2196, 0, address(this.address), 128, mem[_2280], mem[_2280 + 196 len floor32(mem[_2280]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3802 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2280 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3802
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2280 + 32] = 32
                mem[_2280 + 64] = mem[(32 * arg3.length) + 128]
                _3996 = mem[(32 * arg3.length) + 128]
                mem[_2280 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3996) + _2280 + -mem[64] + 96
            if not mem[_1840 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1840 + 44 len 20] == mem[_1840 + 76 len 20]:
                _2197 = mem[(32 * arg3.length) + 192]
                _2281 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2281 + 36] = 0
                mem[_2281 + 68] = _2197
                mem[_2281 + 100] = this.address
                mem[_2281 + 132] = 128
                mem[_2281 + 164] = mem[_2281]
                mem[_2281 + 196 len ceil32(mem[_2281])] = mem[_2281 + 32 len ceil32(mem[_2281])]
                if not mem[_2281] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2197, address(this.address), 128, mem[_2281 + 164 len mem[_2281] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3681 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2281 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3681
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2281 + 32] = 32
                    mem[_2281 + 64] = mem[(32 * arg3.length) + 128]
                    _3903 = mem[(32 * arg3.length) + 128]
                    mem[_2281 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3903) + _2281 + -mem[64] + 96
                mem[floor32(mem[_2281]) + _2281 + 196] = mem[floor32(mem[_2281]) + _2281 + -(mem[_2281] % 32) + 228 len mem[_2281] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2197, address(this.address), 128, mem[_2281], mem[_2281 + 196 len floor32(mem[_2281]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3805 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2281 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3805
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2281 + 32] = 32
                mem[_2281 + 64] = mem[(32 * arg3.length) + 128]
                _3999 = mem[(32 * arg3.length) + 128]
                mem[_2281 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3999) + _2281 + -mem[64] + 96
            _2198 = mem[(32 * arg3.length) + 192]
            _2282 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2282 + 36] = _2198
            mem[_2282 + 68] = 0
            mem[_2282 + 100] = this.address
            mem[_2282 + 132] = 128
            mem[_2282 + 164] = mem[_2282]
            mem[_2282 + 196 len ceil32(mem[_2282])] = mem[_2282 + 32 len ceil32(mem[_2282])]
            if not mem[_2282] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2198, 0, address(this.address), 128, mem[_2282 + 164 len mem[_2282] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3686 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2282 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3686
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2282 + 32] = 32
                mem[_2282 + 64] = mem[(32 * arg3.length) + 128]
                _3906 = mem[(32 * arg3.length) + 128]
                mem[_2282 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3906) + _2282 + -mem[64] + 96
            mem[floor32(mem[_2282]) + _2282 + 196] = mem[floor32(mem[_2282]) + _2282 + -(mem[_2282] % 32) + 228 len mem[_2282] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2198, 0, address(this.address), 128, mem[_2282], mem[_2282 + 196 len floor32(mem[_2282]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3808 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2282 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3808
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2282 + 32] = 32
            mem[_2282 + 64] = mem[(32 * arg3.length) + 128]
            _4002 = mem[(32 * arg3.length) + 128]
            mem[_2282 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4002) + _2282 + -mem[64] + 96
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1936] = 30
                mem[_1936 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _2004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2004 + idx + 68] = mem[_1936 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2004 + 68] = mem[_2004 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2004 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _2003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2003] = 30
                mem[_2003 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _2093 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2093 + idx + 68] = mem[_2003 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2093 + 68] = mem[_2093 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2093 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    t = Mask(112, 0, ext_call.return_data[0])
                    u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _2092 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2092] = 30
            mem[_2092 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _2208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2208 + idx + 68] = mem[_2092 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2208 + 68] = mem[_2208 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2208 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg3.length) + 128]
        mem[(32 * arg3.length) + 160] = w
        require 0 < mem[(32 * arg3.length) + 128]
        if w > arg2:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < arg3.length
        require 0 < mem[(32 * arg3.length) + 128]
        mem[mem[64] + 4] = address(x)
        mem[mem[64] + 36] = w
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(x), w
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1844 = mem[64]
        mem[64] = mem[64] + (32 * arg3.length) + 32
        mem[_1844] = arg3.length
        mem[_1844 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[_1844 + (32 * arg3.length) + 32] = 0
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[_1844 + 44 len 20] == mem[_1844 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1844 + 44 len 20] < mem[_1844 + 76 len 20]:
            if not mem[_1844 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1844 + 44 len 20] == mem[_1844 + 44 len 20]:
                _2204 = mem[(32 * arg3.length) + 192]
                _2287 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2287 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2287 + 36] = 0
                mem[_2287 + 68] = _2204
                mem[_2287 + 100] = this.address
                mem[_2287 + 132] = 128
                mem[_2287 + 164] = mem[_2287]
                mem[_2287 + 196 len ceil32(mem[_2287])] = mem[_2287 + 32 len ceil32(mem[_2287])]
                if not mem[_2287] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2204, address(this.address), 128, mem[_2287 + 164 len mem[_2287] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3691 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2287 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3691
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2287 + 32] = 32
                    mem[_2287 + 64] = mem[(32 * arg3.length) + 128]
                    _3909 = mem[(32 * arg3.length) + 128]
                    mem[_2287 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3909) + _2287 + -mem[64] + 96
                mem[floor32(mem[_2287]) + _2287 + 196] = mem[floor32(mem[_2287]) + _2287 + -(mem[_2287] % 32) + 228 len mem[_2287] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2204, address(this.address), 128, mem[_2287], mem[_2287 + 196 len floor32(mem[_2287]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3811 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2287 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3811
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2287 + 32] = 32
                mem[_2287 + 64] = mem[(32 * arg3.length) + 128]
                _4005 = mem[(32 * arg3.length) + 128]
                mem[_2287 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _4005) + _2287 + -mem[64] + 96
            _2205 = mem[(32 * arg3.length) + 192]
            _2288 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2288 + 36] = _2205
            mem[_2288 + 68] = 0
            mem[_2288 + 100] = this.address
            mem[_2288 + 132] = 128
            mem[_2288 + 164] = mem[_2288]
            mem[_2288 + 196 len ceil32(mem[_2288])] = mem[_2288 + 32 len ceil32(mem[_2288])]
            if not mem[_2288] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2205, 0, address(this.address), 128, mem[_2288 + 164 len mem[_2288] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3696 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2288 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3696
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2288 + 32] = 32
                mem[_2288 + 64] = mem[(32 * arg3.length) + 128]
                _3912 = mem[(32 * arg3.length) + 128]
                mem[_2288 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3912) + _2288 + -mem[64] + 96
            mem[floor32(mem[_2288]) + _2288 + 196] = mem[floor32(mem[_2288]) + _2288 + -(mem[_2288] % 32) + 228 len mem[_2288] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2205, 0, address(this.address), 128, mem[_2288], mem[_2288 + 196 len floor32(mem[_2288]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3814 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2288 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3814
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2288 + 32] = 32
            mem[_2288 + 64] = mem[(32 * arg3.length) + 128]
            _4008 = mem[(32 * arg3.length) + 128]
            mem[_2288 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4008) + _2288 + -mem[64] + 96
        if not mem[_1844 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < arg3.length
        require 1 < mem[(32 * arg3.length) + 128]
        if mem[_1844 + 44 len 20] == mem[_1844 + 76 len 20]:
            _2206 = mem[(32 * arg3.length) + 192]
            _2289 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2289 + 36] = 0
            mem[_2289 + 68] = _2206
            mem[_2289 + 100] = this.address
            mem[_2289 + 132] = 128
            mem[_2289 + 164] = mem[_2289]
            mem[_2289 + 196 len ceil32(mem[_2289])] = mem[_2289 + 32 len ceil32(mem[_2289])]
            if not mem[_2289] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2206, address(this.address), 128, mem[_2289 + 164 len mem[_2289] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3701 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2289 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3701
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2289 + 32] = 32
                mem[_2289 + 64] = mem[(32 * arg3.length) + 128]
                _3915 = mem[(32 * arg3.length) + 128]
                mem[_2289 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3915) + _2289 + -mem[64] + 96
            mem[floor32(mem[_2289]) + _2289 + 196] = mem[floor32(mem[_2289]) + _2289 + -(mem[_2289] % 32) + 228 len mem[_2289] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _2206, address(this.address), 128, mem[_2289], mem[_2289 + 196 len floor32(mem[_2289]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3817 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2289 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3817
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2289 + 32] = 32
            mem[_2289 + 64] = mem[(32 * arg3.length) + 128]
            _4011 = mem[(32 * arg3.length) + 128]
            mem[_2289 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4011) + _2289 + -mem[64] + 96
        _2207 = mem[(32 * arg3.length) + 192]
        _2290 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2290 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_2290 + 36] = _2207
        mem[_2290 + 68] = 0
        mem[_2290 + 100] = this.address
        mem[_2290 + 132] = 128
        mem[_2290 + 164] = mem[_2290]
        mem[_2290 + 196 len ceil32(mem[_2290])] = mem[_2290 + 32 len ceil32(mem[_2290])]
        if not mem[_2290] % 32:
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2207, 0, address(this.address), 128, mem[_2290 + 164 len mem[_2290] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3706 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2290 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3706
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2290 + 32] = 32
            mem[_2290 + 64] = mem[(32 * arg3.length) + 128]
            _3918 = mem[(32 * arg3.length) + 128]
            mem[_2290 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3918) + _2290 + -mem[64] + 96
        mem[floor32(mem[_2290]) + _2290 + 196] = mem[floor32(mem[_2290]) + _2290 + -(mem[_2290] % 32) + 228 len mem[_2290] % 32]
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _2207, 0, address(this.address), 128, mem[_2290], mem[_2290 + 196 len floor32(mem[_2290]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3820 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2290 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3820
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2290 + 32] = 32
        mem[_2290 + 64] = mem[(32 * arg3.length) + 128]
        _4014 = mem[(32 * arg3.length) + 128]
        mem[_2290 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _4014) + _2290 + -mem[64] + 96
    if not mem[172 len 20]:
        mem[(64 * arg3.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + 164] = 32
        mem[(64 * arg3.length) + 196] = 12
        mem[(64 * arg3.length) + 228] = 'ZERO_ADDRESS'
        revert with memory
          from (64 * arg3.length) + 160
           len (127 * arg3.length) + 100
    require 0 < arg3.length
    if mem[172 len 20] != mem[140 len 20]:
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = -1
        x = 0
        while idx < sub_b1fc7008.length:
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 5
            if not stor5[stor6[idx]]:
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[32]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1939] = 30
                mem[_1939 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _2012 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2012 + idx + 68] = mem[_1939 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2012 + 68] = mem[_2012 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2012 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _2011 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2011] = 30
                mem[_2011 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _2100 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2100 + idx + 68] = mem[_2011 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2100 + 68] = mem[_2100 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2100 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    t = Mask(112, 0, ext_call.return_data[32])
                    u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    w = w
                    x = x
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                x = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _2099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2099] = 30
            mem[_2099 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[0]):
                _2217 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2217 + idx + 68] = mem[_2099 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2217 + 68] = mem[_2217 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2217 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                t = Mask(112, 0, ext_call.return_data[32])
                u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            t = Mask(112, 0, ext_call.return_data[32])
            u = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg3.length) + 128]
        mem[(32 * arg3.length) + 160] = w
        require 0 < mem[(32 * arg3.length) + 128]
        if w > arg2:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < arg3.length
        require 0 < mem[(32 * arg3.length) + 128]
        mem[mem[64] + 4] = address(x)
        mem[mem[64] + 36] = w
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(x), w
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1848 = mem[64]
        mem[64] = mem[64] + (32 * arg3.length) + 32
        mem[_1848] = arg3.length
        mem[_1848 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[_1848 + (32 * arg3.length) + 32] = 0
        require 0 < arg3.length
        require 1 < arg3.length
        if mem[_1848 + 44 len 20] == mem[_1848 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1848 + 44 len 20] < mem[_1848 + 76 len 20]:
            if not mem[_1848 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < arg3.length
            require 1 < mem[(32 * arg3.length) + 128]
            if mem[_1848 + 44 len 20] == mem[_1848 + 44 len 20]:
                _2213 = mem[(32 * arg3.length) + 192]
                _2295 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2295 + 36] = 0
                mem[_2295 + 68] = _2213
                mem[_2295 + 100] = this.address
                mem[_2295 + 132] = 128
                mem[_2295 + 164] = mem[_2295]
                mem[_2295 + 196 len ceil32(mem[_2295])] = mem[_2295 + 32 len ceil32(mem[_2295])]
                if not mem[_2295] % 32:
                    require ext_code.size(address(x))
                    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2213, address(this.address), 128, mem[_2295 + 164 len mem[_2295] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                    _3711 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    mem[_2295 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _3711
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2295 + 32] = 32
                    mem[_2295 + 64] = mem[(32 * arg3.length) + 128]
                    _3921 = mem[(32 * arg3.length) + 128]
                    mem[_2295 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3921) + _2295 + -mem[64] + 96
                mem[floor32(mem[_2295]) + _2295 + 196] = mem[floor32(mem[_2295]) + _2295 + -(mem[_2295] % 32) + 228 len mem[_2295] % 32]
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2213, address(this.address), 128, mem[_2295], mem[_2295 + 196 len floor32(mem[_2295]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3823 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2295 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3823
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2295 + 32] = 32
                mem[_2295 + 64] = mem[(32 * arg3.length) + 128]
                _4017 = mem[(32 * arg3.length) + 128]
                mem[_2295 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _4017) + _2295 + -mem[64] + 96
            _2214 = mem[(32 * arg3.length) + 192]
            _2296 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2296 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2296 + 36] = _2214
            mem[_2296 + 68] = 0
            mem[_2296 + 100] = this.address
            mem[_2296 + 132] = 128
            mem[_2296 + 164] = mem[_2296]
            mem[_2296 + 196 len ceil32(mem[_2296])] = mem[_2296 + 32 len ceil32(mem[_2296])]
            if not mem[_2296] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _2214, 0, address(this.address), 128, mem[_2296 + 164 len mem[_2296] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3716 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2296 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3716
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2296 + 32] = 32
                mem[_2296 + 64] = mem[(32 * arg3.length) + 128]
                _3924 = mem[(32 * arg3.length) + 128]
                mem[_2296 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3924) + _2296 + -mem[64] + 96
            mem[floor32(mem[_2296]) + _2296 + 196] = mem[floor32(mem[_2296]) + _2296 + -(mem[_2296] % 32) + 228 len mem[_2296] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2214, 0, address(this.address), 128, mem[_2296], mem[_2296 + 196 len floor32(mem[_2296]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3826 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2296 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3826
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2296 + 32] = 32
            mem[_2296 + 64] = mem[(32 * arg3.length) + 128]
            _4020 = mem[(32 * arg3.length) + 128]
            mem[_2296 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4020) + _2296 + -mem[64] + 96
        if not mem[_1848 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < arg3.length
        require 1 < mem[(32 * arg3.length) + 128]
        if mem[_1848 + 44 len 20] == mem[_1848 + 76 len 20]:
            _2215 = mem[(32 * arg3.length) + 192]
            _2297 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2297 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2297 + 36] = 0
            mem[_2297 + 68] = _2215
            mem[_2297 + 100] = this.address
            mem[_2297 + 132] = 128
            mem[_2297 + 164] = mem[_2297]
            mem[_2297 + 196 len ceil32(mem[_2297])] = mem[_2297 + 32 len ceil32(mem[_2297])]
            if not mem[_2297] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2215, address(this.address), 128, mem[_2297 + 164 len mem[_2297] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3721 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2297 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3721
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2297 + 32] = 32
                mem[_2297 + 64] = mem[(32 * arg3.length) + 128]
                _3927 = mem[(32 * arg3.length) + 128]
                mem[_2297 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3927) + _2297 + -mem[64] + 96
            mem[floor32(mem[_2297]) + _2297 + 196] = mem[floor32(mem[_2297]) + _2297 + -(mem[_2297] % 32) + 228 len mem[_2297] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _2215, address(this.address), 128, mem[_2297], mem[_2297 + 196 len floor32(mem[_2297]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3829 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2297 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3829
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2297 + 32] = 32
            mem[_2297 + 64] = mem[(32 * arg3.length) + 128]
            _4023 = mem[(32 * arg3.length) + 128]
            mem[_2297 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4023) + _2297 + -mem[64] + 96
        _2216 = mem[(32 * arg3.length) + 192]
        _2298 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_2298 + 36] = _2216
        mem[_2298 + 68] = 0
        mem[_2298 + 100] = this.address
        mem[_2298 + 132] = 128
        mem[_2298 + 164] = mem[_2298]
        mem[_2298 + 196 len ceil32(mem[_2298])] = mem[_2298 + 32 len ceil32(mem[_2298])]
        if not mem[_2298] % 32:
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2216, 0, address(this.address), 128, mem[_2298 + 164 len mem[_2298] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3726 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2298 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3726
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2298 + 32] = 32
            mem[_2298 + 64] = mem[(32 * arg3.length) + 128]
            _3930 = mem[(32 * arg3.length) + 128]
            mem[_2298 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3930) + _2298 + -mem[64] + 96
        mem[floor32(mem[_2298]) + _2298 + 196] = mem[floor32(mem[_2298]) + _2298 + -(mem[_2298] % 32) + 228 len mem[_2298] % 32]
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _2216, 0, address(this.address), 128, mem[_2298], mem[_2298 + 196 len floor32(mem[_2298]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3832 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2298 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3832
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2298 + 32] = 32
        mem[_2298 + 64] = mem[(32 * arg3.length) + 128]
        _4026 = mem[(32 * arg3.length) + 128]
        mem[_2298 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _4026) + _2298 + -mem[64] + 96
    idx = 0
    s = 0
    t = 0
    u = 0
    v = 0
    w = -1
    x = 0
    while idx < sub_b1fc7008.length:
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 5
        if not stor5[stor6[idx]]:
            idx = idx + 1
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            continue 
        require idx < sub_b1fc7008.length
        require ext_code.size(sub_b1fc7008[idx])
        staticcall sub_b1fc7008[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not Mask(112, 0, ext_call.return_data[0]):
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1942 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1942] = 30
            mem[_1942 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _2020 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2020 + idx + 68] = mem[_1942 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2020 + 68] = mem[_2020 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2020 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * arg1:
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _2019 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2019] = 30
            mem[_2019 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _2107 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2107 + idx + 68] = mem[_2019 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2107 + 68] = mem[_2107 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2107 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                w = w
                x = x
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            x = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0]) * arg1
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < sub_b1fc7008.length
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 4
        _2106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2106] = 30
        mem[_2106 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > Mask(112, 0, ext_call.return_data[32]):
            _2226 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2226 + idx + 68] = mem[_2106 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2226 + 68] = mem[_2226 + 70 len 30]
            revert with memory
              from mem[64]
               len _2226 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
            revert with 0, 'SafeMath: addition overflow'
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= w:
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            w = w
            x = x
            continue 
        require idx < sub_b1fc7008.length
        mem[0] = 6
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[32])
        t = Mask(112, 0, ext_call.return_data[0])
        u = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        v = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        w = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        x = sub_b1fc7008[idx]
        continue 
    require 0 < mem[(32 * arg3.length) + 128]
    mem[(32 * arg3.length) + 160] = w
    require 0 < mem[(32 * arg3.length) + 128]
    if w > arg2:
        revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
    require 0 < arg3.length
    require 0 < mem[(32 * arg3.length) + 128]
    mem[mem[64] + 4] = address(x)
    mem[mem[64] + 36] = w
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(x), w
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _1852 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_1852] = arg3.length
    mem[_1852 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[_1852 + (32 * arg3.length) + 32] = 0
    require 0 < arg3.length
    require 1 < arg3.length
    if mem[_1852 + 44 len 20] == mem[_1852 + 76 len 20]:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if mem[_1852 + 44 len 20] < mem[_1852 + 76 len 20]:
        if not mem[_1852 + 44 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < arg3.length
        require 1 < mem[(32 * arg3.length) + 128]
        if mem[_1852 + 44 len 20] == mem[_1852 + 44 len 20]:
            _2222 = mem[(32 * arg3.length) + 192]
            _2303 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2303 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2303 + 36] = 0
            mem[_2303 + 68] = _2222
            mem[_2303 + 100] = this.address
            mem[_2303 + 132] = 128
            mem[_2303 + 164] = mem[_2303]
            mem[_2303 + 196 len ceil32(mem[_2303])] = mem[_2303 + 32 len ceil32(mem[_2303])]
            if not mem[_2303] % 32:
                require ext_code.size(address(x))
                call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2222, address(this.address), 128, mem[_2303 + 164 len mem[_2303] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
                _3731 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                mem[_2303 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _3731
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2303 + 32] = 32
                mem[_2303 + 64] = mem[(32 * arg3.length) + 128]
                _3933 = mem[(32 * arg3.length) + 128]
                mem[_2303 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3933) + _2303 + -mem[64] + 96
            mem[floor32(mem[_2303]) + _2303 + 196] = mem[floor32(mem[_2303]) + _2303 + -(mem[_2303] % 32) + 228 len mem[_2303] % 32]
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _2222, address(this.address), 128, mem[_2303], mem[_2303 + 196 len floor32(mem[_2303]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3835 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2303 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3835
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2303 + 32] = 32
            mem[_2303 + 64] = mem[(32 * arg3.length) + 128]
            _4029 = mem[(32 * arg3.length) + 128]
            mem[_2303 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _4029) + _2303 + -mem[64] + 96
        _2223 = mem[(32 * arg3.length) + 192]
        _2304 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2304 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_2304 + 36] = _2223
        mem[_2304 + 68] = 0
        mem[_2304 + 100] = this.address
        mem[_2304 + 132] = 128
        mem[_2304 + 164] = mem[_2304]
        mem[_2304 + 196 len ceil32(mem[_2304])] = mem[_2304 + 32 len ceil32(mem[_2304])]
        if not mem[_2304] % 32:
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _2223, 0, address(this.address), 128, mem[_2304 + 164 len mem[_2304] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3736 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2304 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3736
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2304 + 32] = 32
            mem[_2304 + 64] = mem[(32 * arg3.length) + 128]
            _3936 = mem[(32 * arg3.length) + 128]
            mem[_2304 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3936) + _2304 + -mem[64] + 96
        mem[floor32(mem[_2304]) + _2304 + 196] = mem[floor32(mem[_2304]) + _2304 + -(mem[_2304] % 32) + 228 len mem[_2304] % 32]
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _2223, 0, address(this.address), 128, mem[_2304], mem[_2304 + 196 len floor32(mem[_2304]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3838 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2304 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3838
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2304 + 32] = 32
        mem[_2304 + 64] = mem[(32 * arg3.length) + 128]
        _4032 = mem[(32 * arg3.length) + 128]
        mem[_2304 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _4032) + _2304 + -mem[64] + 96
    if not mem[_1852 + 76 len 20]:
        revert with 0, 'ZERO_ADDRESS'
    require 0 < arg3.length
    require 1 < mem[(32 * arg3.length) + 128]
    if mem[_1852 + 44 len 20] == mem[_1852 + 76 len 20]:
        _2224 = mem[(32 * arg3.length) + 192]
        _2305 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2305 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_2305 + 36] = 0
        mem[_2305 + 68] = _2224
        mem[_2305 + 100] = this.address
        mem[_2305 + 132] = 128
        mem[_2305 + 164] = mem[_2305]
        mem[_2305 + 196 len ceil32(mem[_2305])] = mem[_2305 + 32 len ceil32(mem[_2305])]
        if not mem[_2305] % 32:
            require ext_code.size(address(x))
            call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _2224, address(this.address), 128, mem[_2305 + 164 len mem[_2305] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
            _3741 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            mem[_2305 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _3741
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2305 + 32] = 32
            mem[_2305 + 64] = mem[(32 * arg3.length) + 128]
            _3939 = mem[(32 * arg3.length) + 128]
            mem[_2305 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            return memory
              from mem[64]
               len (32 * _3939) + _2305 + -mem[64] + 96
        mem[floor32(mem[_2305]) + _2305 + 196] = mem[floor32(mem[_2305]) + _2305 + -(mem[_2305] % 32) + 228 len mem[_2305] % 32]
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _2224, address(this.address), 128, mem[_2305], mem[_2305 + 196 len floor32(mem[_2305]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3841 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2305 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3841
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2305 + 32] = 32
        mem[_2305 + 64] = mem[(32 * arg3.length) + 128]
        _4035 = mem[(32 * arg3.length) + 128]
        mem[_2305 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _4035) + _2305 + -mem[64] + 96
    _2225 = mem[(32 * arg3.length) + 192]
    _2306 = mem[64]
    mem[64] = mem[64] + 32
    mem[_2306 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_2306 + 36] = _2225
    mem[_2306 + 68] = 0
    mem[_2306 + 100] = this.address
    mem[_2306 + 132] = 128
    mem[_2306 + 164] = mem[_2306]
    mem[_2306 + 196 len ceil32(mem[_2306])] = mem[_2306 + 32 len ceil32(mem[_2306])]
    if not mem[_2306] % 32:
        require ext_code.size(address(x))
        call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _2225, 0, address(this.address), 128, mem[_2306 + 164 len mem[_2306] + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
        _3746 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        mem[_2306 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args _3746
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2306 + 32] = 32
        mem[_2306 + 64] = mem[(32 * arg3.length) + 128]
        _3942 = mem[(32 * arg3.length) + 128]
        mem[_2306 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return memory
          from mem[64]
           len (32 * _3942) + _2306 + -mem[64] + 96
    mem[floor32(mem[_2306]) + _2306 + 196] = mem[floor32(mem[_2306]) + _2306 + -(mem[_2306] % 32) + 228 len mem[_2306] % 32]
    require ext_code.size(address(x))
    call address(x).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args _2225, 0, address(this.address), 128, mem[_2306], mem[_2306 + 196 len floor32(mem[_2306]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require mem[(32 * arg3.length) + 128] - 1 < mem[(32 * arg3.length) + 128]
    _3844 = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
    mem[_2306 + 36] = mem[(32 * mem[(32 * arg3.length) + 128] - 1) + (32 * arg3.length) + 160]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args _3844
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_2306 + 32] = 32
    mem[_2306 + 64] = mem[(32 * arg3.length) + 128]
    _4038 = mem[(32 * arg3.length) + 128]
    mem[_2306 + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return memory
      from mem[64]
       len (32 * _4038) + _2306 + -mem[64] + 96
}



}
