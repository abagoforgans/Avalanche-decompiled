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
    staticcall arg1.0x70a08231 with:
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
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], 0) << 544)
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
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
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
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _601 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _609 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _601 + (32 * _609) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _601 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _609:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _761 = mem[_753]
            require mem[_753] == mem[_753]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _785 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _793 = mem[_785]
            require mem[_785] == mem[_785]
            mem[mem[64] + 4] = _761
            mem[mem[64] + 36] = _793
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _761, _793, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == mem[_817]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _602 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _610 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _602 + (32 * _610) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _602 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _610:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _754 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _762 = mem[_754]
            require mem[_754] == mem[_754]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _794 = mem[_786]
            require mem[_786] == mem[_786]
            mem[mem[64] + 4] = _762
            mem[mem[64] + 36] = _794
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _762, _794, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_818] == mem[_818]
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _603 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _611 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _611
            require _603 + (32 * _611) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _603 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _611:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _755 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _763 = mem[_755]
            require mem[_755] == mem[_755]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _795 = mem[_787]
            require mem[_787] == mem[_787]
            mem[mem[64] + 4] = _763
            mem[mem[64] + 36] = _795
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _763, _795, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_819] == mem[_819]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _604 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _612 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _612
            require _604 + (32 * _612) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _604 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _612:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _764 = mem[_756]
            require mem[_756] == mem[_756]
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _796 = mem[_788]
            require mem[_788] == mem[_788]
            mem[mem[64] + 4] = _764
            mem[mem[64] + 36] = _796
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
            call 0x694738e0a438d90487b4a549b201142c1a97b556.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _764, _796, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_820] == mem[_820]
    stor0 = 1
}

function takeWAVAXMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
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
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _601 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _609 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _601 + (32 * _609) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _601 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _609:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _761 = mem[_753]
            require mem[_753] == mem[_753]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _785 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _793 = mem[_785]
            require mem[_785] == mem[_785]
            mem[mem[64] + 4] = _761
            mem[mem[64] + 36] = _793
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _761, _793, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == mem[_817]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _602 = mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _610 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], ext_call.return_data[0 len 28] + 388]
            require _602 + (32 * _610) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _602 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _610:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _754 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _762 = mem[_754]
            require mem[_754] == mem[_754]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _794 = mem[_786]
            require mem[_786] == mem[_786]
            mem[mem[64] + 4] = _762
            mem[mem[64] + 36] = _794
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _762, _794, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_818] == mem[_818]
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _603 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _611 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _611
            require _603 + (32 * _611) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _603 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _611:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _755 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _763 = mem[_755]
            require mem[_755] == mem[_755]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _795 = mem[_787]
            require mem[_787] == mem[_787]
            mem[mem[64] + 4] = _763
            mem[mem[64] + 36] = _795
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _763, _795, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_819] == mem[_819]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _604 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _612 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _612
            require _604 + (32 * _612) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _604 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _612:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _764 = mem[_756]
            require mem[_756] == mem[_756]
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _796 = mem[_788]
            require mem[_788] == mem[_788]
            mem[mem[64] + 4] = _764
            mem[mem[64] + 36] = _796
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xe02b1aa2c4be73093be79d763fdffc0e3cf67318)
            call 0xe02b1aa2c4be73093be79d763fdffc0e3cf67318.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _764, _796, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_820] == mem[_820]
    stor0 = 1
}

function takeTIMEMIMMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
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
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _577 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _585 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _577 + (32 * _585) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _577 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _585:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _841 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _849 = mem[_841]
            require mem[_841] == mem[_841]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _881 = mem[_873]
            require mem[_873] == mem[_873]
            mem[mem[64] + 68] = _849
            mem[mem[64] + 100] = _881
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _849, _881, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _905 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_905] == mem[_905]
            require mem[_905 + 32] == mem[_905 + 32]
            require mem[_905 + 64] == mem[_905 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _953 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _961 = mem[_953]
            require mem[_953] == mem[_953]
            if mem[_953] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _993 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1001 = mem[_993]
            require mem[_993] == mem[_993]
            mem[mem[64] + 4] = _961
            mem[mem[64] + 36] = _1001
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _961, _1001, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1033] == mem[_1033]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _578 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _586 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _578 + (32 * _586) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _578 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _586:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _842 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _850 = mem[_842]
            require mem[_842] == mem[_842]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _874 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _882 = mem[_874]
            require mem[_874] == mem[_874]
            mem[mem[64] + 68] = _850
            mem[mem[64] + 100] = _882
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _850, _882, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_906] == mem[_906]
            require mem[_906 + 32] == mem[_906 + 32]
            require mem[_906 + 64] == mem[_906 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _954 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _962 = mem[_954]
            require mem[_954] == mem[_954]
            if mem[_954] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _994 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1002 = mem[_994]
            require mem[_994] == mem[_994]
            mem[mem[64] + 4] = _962
            mem[mem[64] + 36] = _1002
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _962, _1002, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1034] == mem[_1034]
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _579 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _587 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _587
            require _579 + (32 * _587) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _579 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _587:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _843 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _851 = mem[_843]
            require mem[_843] == mem[_843]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _875 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _883 = mem[_875]
            require mem[_875] == mem[_875]
            mem[mem[64] + 68] = _851
            mem[mem[64] + 100] = _883
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _851, _883, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _907 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_907] == mem[_907]
            require mem[_907 + 32] == mem[_907 + 32]
            require mem[_907 + 64] == mem[_907 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _963 = mem[_955]
            require mem[_955] == mem[_955]
            if mem[_955] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _995 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1003 = mem[_995]
            require mem[_995] == mem[_995]
            mem[mem[64] + 4] = _963
            mem[mem[64] + 36] = _1003
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _963, _1003, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1035] == mem[_1035]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _580 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _588 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _588
            require _580 + (32 * _588) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _580 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _588:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _844 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _852 = mem[_844]
            require mem[_844] == mem[_844]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _884 = mem[_876]
            require mem[_876] == mem[_876]
            mem[mem[64] + 68] = _852
            mem[mem[64] + 100] = _884
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0x130966628846bfd36ff31a822705796e8cb8c18d, _852, _884, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_908] == mem[_908]
            require mem[_908 + 32] == mem[_908 + 32]
            require mem[_908 + 64] == mem[_908 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
            staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _956 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _964 = mem[_956]
            require mem[_956] == mem[_956]
            if mem[_956] <= 0:
                revert with 0, 'TimeZap : No TIME-MIM LP tokens balance'
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _996 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1004 = mem[_996]
            require mem[_996] == mem[_996]
            mem[mem[64] + 4] = _964
            mem[mem[64] + 36] = _1004
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xa184ae1a71ecad20e822cb965b99c287590c4ffe)
            call 0xa184ae1a71ecad20e822cb965b99c287590c4ffe.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _964, _1004, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1036] == mem[_1036]
    stor0 = 1
}

function takeTIMEWAVAXMint() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
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
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _577 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _585 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _577 + (32 * _585) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _577 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _585:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _841 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _849 = mem[_841]
            require mem[_841] == mem[_841]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _881 = mem[_873]
            require mem[_873] == mem[_873]
            mem[mem[64] + 68] = _849
            mem[mem[64] + 100] = _881
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _849, _881, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _905 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_905] == mem[_905]
            require mem[_905 + 32] == mem[_905 + 32]
            require mem[_905 + 64] == mem[_905 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _953 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _961 = mem[_953]
            require mem[_953] == mem[_953]
            if mem[_953] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _993 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1001 = mem[_993]
            require mem[_993] == mem[_993]
            mem[mem[64] + 4] = _961
            mem[mem[64] + 36] = _1001
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _961, _1001, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1033] == mem[_1033]
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 296] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 388
            require return_data.size >= 32
            _578 = mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
            _586 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]) + 389
            mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 388]
            require _578 + (32 * _586) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _578 + 420
            t = (4 * ceil32(return_data.size)) + 420
            while idx < _586:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _842 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _850 = mem[_842]
            require mem[_842] == mem[_842]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _874 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _882 = mem[_874]
            require mem[_874] == mem[_874]
            mem[mem[64] + 68] = _850
            mem[mem[64] + 100] = _882
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _850, _882, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_906] == mem[_906]
            require mem[_906 + 32] == mem[_906 + 32]
            require mem[_906 + 64] == mem[_906 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _954 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _962 = mem[_954]
            require mem[_954] == mem[_954]
            if mem[_954] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _994 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1002 = mem[_994]
            require mem[_994] == mem[_994]
            mem[mem[64] + 4] = _962
            mem[mem[64] + 36] = _1002
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _962, _1002, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1034] == mem[_1034]
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
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _579 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _587 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _587
            require _579 + (32 * _587) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _579 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _587:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _843 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _851 = mem[_843]
            require mem[_843] == mem[_843]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _875 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _883 = mem[_875]
            require mem[_875] == mem[_875]
            mem[mem[64] + 68] = _851
            mem[mem[64] + 100] = _883
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _851, _883, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _907 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_907] == mem[_907]
            require mem[_907 + 32] == mem[_907 + 32]
            require mem[_907 + 64] == mem[_907 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _963 = mem[_955]
            require mem[_955] == mem[_955]
            if mem[_955] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _995 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1003 = mem[_995]
            require mem[_995] == mem[_995]
            mem[mem[64] + 4] = _963
            mem[mem[64] + 36] = _1003
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _963, _1003, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1035] == mem[_1035]
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
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
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _580 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
            _588 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 389]) + 390
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _588
            require _580 + (32 * _588) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _580 + 421
            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
            while idx < _588:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _844 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _852 = mem[_844]
            require mem[_844] == mem[_844]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _884 = mem[_876]
            require mem[_876] == mem[_876]
            mem[mem[64] + 68] = _852
            mem[mem[64] + 100] = _884
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _852, _884, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_908] == mem[_908]
            require mem[_908 + 32] == mem[_908 + 32]
            require mem[_908 + 64] == mem[_908 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
            staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _956 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _964 = mem[_956]
            require mem[_956] == mem[_956]
            if mem[_956] <= 0:
                revert with 0, 'TimeZap : No TIME-AVAX LP tokens balance'
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.bondPrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _996 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1004 = mem[_996]
            require mem[_996] == mem[_996]
            mem[mem[64] + 4] = _964
            mem[mem[64] + 36] = _1004
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(0xc26850686ce755ffb8690ea156e5a6cf03dcbde1)
            call 0xc26850686ce755ffb8690ea156e5a6cf03dcbde1.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _964, _1004, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1036] == mem[_1036]
    stor0 = 1
}



}
