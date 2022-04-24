contract main {




// =====================  Runtime code  =====================


const WAVAXBond = 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318

const TIMEMIMBond = 0xa184ae1a71ecad20e822cb965b99c287590c4ffe

const TIMEMIMLPtokens = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df

const TIMEWAVAXBond = 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1

const MIMBond = 0x694738e0a438d90487b4a549b201142c1a97b556

const Factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const TIMEStaking = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const TIMEWAVAXLPtokens = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917

const Router = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


uint256 stor0;
address owner;
address stor2;

function owner() payable {
    return owner
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

function retrieveFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TimeZap : no balance for this token in the contract'
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = msg.sender
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function takeMIMMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TimeZap : 0 MEMO to unstake'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _621 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _629 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _621 + (32 * _629) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _621 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _629:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _773 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _781 = mem[_773]
            require mem[_773] == mem[_773]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _813 = mem[_805]
            require mem[_805] == mem[_805]
            mem[mem[64] + 4] = _781
            mem[mem[64] + 36] = _813
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _781, _813, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_837] == mem[_837]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _622 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _630 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _622 + (32 * _630) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _622 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _630:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _782 = mem[_774]
            require mem[_774] == mem[_774]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _806 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_806]
            require mem[_806] == mem[_806]
            mem[mem[64] + 4] = _782
            mem[mem[64] + 36] = _814
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _782, _814, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_838] == mem[_838]
    else:
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _623 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _631 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _631
            require _623 + (32 * _631) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _623 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _631:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _783 = mem[_775]
            require mem[_775] == mem[_775]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _807 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_807]
            require mem[_807] == mem[_807]
            mem[mem[64] + 4] = _783
            mem[mem[64] + 36] = _815
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _783, _815, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_839] == mem[_839]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _624 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _632 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _632
            require _624 + (32 * _632) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _624 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _632:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _784 = mem[_776]
            require mem[_776] == mem[_776]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _808 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _816 = mem[_808]
            require mem[_808] == mem[_808]
            mem[mem[64] + 4] = _784
            mem[mem[64] + 36] = _816
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _784, _816, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _840 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_840] == mem[_840]
    stor0 = 1
}

function takeWAVAXMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TimeZap : 0 MEMO to unstake'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _621 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _629 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _621 + (32 * _629) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _621 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _629:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _773 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _781 = mem[_773]
            require mem[_773] == mem[_773]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _813 = mem[_805]
            require mem[_805] == mem[_805]
            mem[mem[64] + 4] = _781
            mem[mem[64] + 36] = _813
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _781, _813, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_837] == mem[_837]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _622 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _630 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _622 + (32 * _630) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _622 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _630:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _782 = mem[_774]
            require mem[_774] == mem[_774]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _806 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_806]
            require mem[_806] == mem[_806]
            mem[mem[64] + 4] = _782
            mem[mem[64] + 36] = _814
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _782, _814, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_838] == mem[_838]
    else:
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _623 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _631 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _631
            require _623 + (32 * _631) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _623 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _631:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _783 = mem[_775]
            require mem[_775] == mem[_775]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _807 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_807]
            require mem[_807] == mem[_807]
            mem[mem[64] + 4] = _783
            mem[mem[64] + 36] = _815
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _783, _815, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_839] == mem[_839]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _624 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _632 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _632
            require _624 + (32 * _632) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _624 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _632:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _784 = mem[_776]
            require mem[_776] == mem[_776]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _808 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _816 = mem[_808]
            require mem[_808] == mem[_808]
            mem[mem[64] + 4] = _784
            mem[mem[64] + 36] = _816
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _784, _816, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _840 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_840] == mem[_840]
    stor0 = 1
}

function takeTIMEMIMMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TimeZap : 0 MEMO to unstake'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _589 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _597 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _589 + (32 * _597) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _589 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _597:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _877 = mem[_869]
            require mem[_869] == mem[_869]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _909 = mem[_901]
            require mem[_901] == mem[_901]
            mem[mem[64] + 68] = _877
            mem[mem[64] + 100] = _909
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _877, _909, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_933] == mem[_933]
            require mem[_933 + 32] == mem[_933 + 32]
            require mem[_933 + 64] == mem[_933 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _981 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _989 = mem[_981]
            require mem[_981] == mem[_981]
            if mem[_981] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1021 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1029 = mem[_1021]
            require mem[_1021] == mem[_1021]
            mem[mem[64] + 4] = _989
            mem[mem[64] + 36] = _1029
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _989, _1029, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1061 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1061] == mem[_1061]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _590 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _598 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _590 + (32 * _598) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _590 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _598:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _878 = mem[_870]
            require mem[_870] == mem[_870]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _902 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _910 = mem[_902]
            require mem[_902] == mem[_902]
            mem[mem[64] + 68] = _878
            mem[mem[64] + 100] = _910
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _878, _910, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_934] == mem[_934]
            require mem[_934 + 32] == mem[_934 + 32]
            require mem[_934 + 64] == mem[_934 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _982 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _990 = mem[_982]
            require mem[_982] == mem[_982]
            if mem[_982] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1022 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1030 = mem[_1022]
            require mem[_1022] == mem[_1022]
            mem[mem[64] + 4] = _990
            mem[mem[64] + 36] = _1030
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _990, _1030, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1062 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1062] == mem[_1062]
    else:
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _591 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _599 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _599
            require _591 + (32 * _599) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _591 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _599:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _871 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _879 = mem[_871]
            require mem[_871] == mem[_871]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _911 = mem[_903]
            require mem[_903] == mem[_903]
            mem[mem[64] + 68] = _879
            mem[mem[64] + 100] = _911
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _879, _911, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_935] == mem[_935]
            require mem[_935 + 32] == mem[_935 + 32]
            require mem[_935 + 64] == mem[_935 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _991 = mem[_983]
            require mem[_983] == mem[_983]
            if mem[_983] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1023 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1031 = mem[_1023]
            require mem[_1023] == mem[_1023]
            mem[mem[64] + 4] = _991
            mem[mem[64] + 36] = _1031
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _991, _1031, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1063] == mem[_1063]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x130966628846bfd36ff31a822705796e8cb8c18d
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _592 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _600 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _600
            require _592 + (32 * _600) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _592 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _600:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _880 = mem[_872]
            require mem[_872] == mem[_872]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _912 = mem[_904]
            require mem[_904] == mem[_904]
            mem[mem[64] + 68] = _880
            mem[mem[64] + 100] = _912
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _880, _912, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_936] == mem[_936]
            require mem[_936 + 32] == mem[_936 + 32]
            require mem[_936 + 64] == mem[_936 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _992 = mem[_984]
            require mem[_984] == mem[_984]
            if mem[_984] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1024 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1032 = mem[_1024]
            require mem[_1024] == mem[_1024]
            mem[mem[64] + 4] = _992
            mem[mem[64] + 36] = _1032
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _992, _1032, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1064] == mem[_1064]
    stor0 = 1
}

function takeTIMEWAVAXMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TimeZap : 0 MEMO to unstake'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _589 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _597 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _589 + (32 * _597) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _589 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _597:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _877 = mem[_869]
            require mem[_869] == mem[_869]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _909 = mem[_901]
            require mem[_901] == mem[_901]
            mem[mem[64] + 68] = _877
            mem[mem[64] + 100] = _909
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _877, _909, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_933] == mem[_933]
            require mem[_933 + 32] == mem[_933 + 32]
            require mem[_933 + 64] == mem[_933 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _981 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _989 = mem[_981]
            require mem[_981] == mem[_981]
            if mem[_981] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1021 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1029 = mem[_1021]
            require mem[_1021] == mem[_1021]
            mem[mem[64] + 4] = _989
            mem[mem[64] + 36] = _1029
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _989, _1029, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1061 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1061] == mem[_1061]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + 292] = 2
            mem[(2 * ceil32(return_data.size)) + 324] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + 356] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + 424] = 0
            mem[(2 * ceil32(return_data.size)) + 456] = 160
            mem[(2 * ceil32(return_data.size)) + 552] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 324
            t = (2 * ceil32(return_data.size)) + 584
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 488] = this.address
            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _590 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _598 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 420
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _590 + (32 * _598) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _590 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _598:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _878 = mem[_870]
            require mem[_870] == mem[_870]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _902 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _910 = mem[_902]
            require mem[_902] == mem[_902]
            mem[mem[64] + 68] = _878
            mem[mem[64] + 100] = _910
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _878, _910, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_934] == mem[_934]
            require mem[_934 + 32] == mem[_934 + 32]
            require mem[_934 + 64] == mem[_934 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _982 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _990 = mem[_982]
            require mem[_982] == mem[_982]
            if mem[_982] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1022 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1030 = mem[_1022]
            require mem[_1022] == mem[_1022]
            mem[mem[64] + 4] = _990
            mem[mem[64] + 36] = _1030
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _990, _1030, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1062 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1062] == mem[_1062]
    else:
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _591 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _599 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _599
            require _591 + (32 * _599) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _591 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _599:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _871 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _879 = mem[_871]
            require mem[_871] == mem[_871]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _911 = mem[_903]
            require mem[_903] == mem[_903]
            mem[mem[64] + 68] = _879
            mem[mem[64] + 100] = _911
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _879, _911, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_935] == mem[_935]
            require mem[_935 + 32] == mem[_935 + 32]
            require mem[_935 + 64] == mem[_935 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _991 = mem[_983]
            require mem[_983] == mem[_983]
            if mem[_983] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1023 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1031 = mem[_1023]
            require mem[_1023] == mem[_1023]
            mem[mem[64] + 4] = _991
            mem[mem[64] + 36] = _1031
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _991, _1031, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1063] == mem[_1063]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TimeZap : 0 TIME balance'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] / 2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _592 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _600 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 421
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _600
            require _592 + (32 * _600) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _592 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _600:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _880 = mem[_872]
            require mem[_872] == mem[_872]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _912 = mem[_904]
            require mem[_904] == mem[_904]
            mem[mem[64] + 68] = _880
            mem[mem[64] + 100] = _912
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _880, _912, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_936] == mem[_936]
            require mem[_936 + 32] == mem[_936 + 32]
            require mem[_936 + 64] == mem[_936 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _992 = mem[_984]
            require mem[_984] == mem[_984]
            if mem[_984] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1024 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1032 = mem[_1024]
            require mem[_1024] == mem[_1024]
            mem[mem[64] + 4] = _992
            mem[mem[64] + 36] = _1032
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args _992, _1032, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1064] == mem[_1064]
    stor0 = 1
}



}
