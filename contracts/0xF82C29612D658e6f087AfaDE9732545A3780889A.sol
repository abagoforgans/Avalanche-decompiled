contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    if not arg1:
        revert with 0, 'new admin is the zero address'
    if ext_code.size(arg1) > 0:
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[address(arg1)] = 1
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == adminAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c6520746f6b656e20616d6f756e74,
                    mem[235 len 25]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require ext_call.success
    return 1
}

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    if not arg2:
        revert with 0, 'recipient cannot be 0 address'
    if not stor0[address(arg2)]:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0xfe726563697069656e74206d75737420626520612063616c6c61626c652061646472657373206f72207468652061646d69,
                        mem[213 len 15]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x59576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c652065746820616d6f756e74,
                    mem[233 len 27]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_728e37af(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.0x9897c7e3 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.0x9897c7e3 with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.0x9897c7e3 with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_634de51c(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.addLiquidityHT(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityHT(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityHT(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_20e4353e(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_70df3acd(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_742dc994(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_7b70963b(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), -1
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e50616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e,
                        mem[199 len 29]
        if ext_call.return_data[12 len 20] != arg2:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x5450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[202 len 26]
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(arg3)
            call arg3.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) wei
                 gas gas_remaining wei
                args 0, ext_call.return_data[32 len 64], 0, 0, address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}



}
