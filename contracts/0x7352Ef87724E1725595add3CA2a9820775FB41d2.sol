contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address owner;
address usdcAddress;
address avaiAddress;
uint256 usdcRate;
uint256 avaiRate;
address treasuryAddress;
uint256 stor155;
uint256 hourlyLimit;
mapping of uint256 stor157;

function avai() payable {
    return avaiAddress
}

function usdcRate() payable {
    return usdcRate
}

function usdc() payable {
    return usdcAddress
}

function treasury() payable {
    return address(treasuryAddress)
}

function hourlyLimit() payable {
    return hourlyLimit
}

function owner() payable {
    return owner
}

function avaiRate() payable {
    return avaiRate
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

function setHourlyLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hourlyLimit = arg1
    emit 0xed8edd16: arg1
}

function changeTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Treasury can not be zero address'
    address(treasuryAddress) = arg1
    emit 0x307e3580: arg1
}

function setAVAIRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, 'Must be 0-1% fee'
    if arg1 < 9900:
        revert with 0, 'Must be 0-1% fee'
    avaiRate = arg1
    emit 0x59a87440: arg1
}

function setUSDCRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10100:
        revert with 0, 'Must be 0-1% fee'
    if arg1 < 10000:
        revert with 0, 'Must be 0-1% fee'
    usdcRate = arg1
    emit 0xa5a6e753: arg1
}

function usdReserves() payable {
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor1 = 1
        usdcAddress = arg1
        avaiAddress = arg2
        avaiRate = 9925
        usdcRate = 10075
        uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor1 = 1
            usdcAddress = arg1
            avaiAddress = arg2
            avaiRate = 9925
            usdcRate = 10075
            uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor1 = 1
                usdcAddress = arg1
                avaiAddress = arg2
                avaiRate = 9925
                usdcRate = 10075
                uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor1 = 1
                    usdcAddress = arg1
                    avaiAddress = arg2
                    avaiRate = 9925
                    usdcRate = 10075
                    uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor1 = 1
                        usdcAddress = arg1
                        avaiAddress = arg2
                        avaiRate = 9925
                        usdcRate = 10075
                        uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
                    else:
                        uint16(stor0.field_0) = 257
                        stor1 = 1
                        uint8(stor0.field_8) = 0
                        usdcAddress = arg1
                        avaiAddress = arg2
                        avaiRate = 9925
                        usdcRate = 10075
                        uint256(stor155) = msg.sender or Mask(96, 160, uint256(stor155))
                        uint8(stor0.field_8) = 0
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'Cannot redeem 0 USDC'
    mem[100] = this.address
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not enough USDC in reserves'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 / 10^12:
        revert with 0, 'Not enough USDC in reserves'
    if arg1 and avaiRate > -1 / arg1:
        revert with 0, 17
    if arg1 / 10^12 < arg1 * avaiRate / 10^16:
        revert with 0, 17
    require ext_code.size(avaiAddress)
    call avaiAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = arg1 * avaiRate / 10^16
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(usdcAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 * avaiRate / 10^16, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call usdcAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1 * avaiRate / 10^16, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1 * avaiRate / 10^16, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 296] = address(treasuryAddress)
        mem[(2 * ceil32(return_data.size)) + 328] = (arg1 / 10^12) - (arg1 * avaiRate / 10^16)
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(usdcAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call usdcAddress with:
           funct Mask(32, 224, 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Redeem(msg.sender, arg1 * avaiRate / 10^16, (arg1 / 10^12) - (arg1 * avaiRate / 10^16));
        stor1 = 1
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(treasuryAddress)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = (arg1 / 10^12) - (arg1 * avaiRate / 10^16)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(usdcAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call usdcAddress with:
       funct Mask(32, 224, 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(treasuryAddress), (arg1 / 10^12) - (arg1 * avaiRate / 10^16), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Redeem(msg.sender, arg1 * avaiRate / 10^16, (arg1 / 10^12) - (arg1 * avaiRate / 10^16));
        stor1 = 1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[(4 * ceil32(return_data.size)) + 426] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 458] = arg1 * avaiRate / 10^16
        mem[(4 * ceil32(return_data.size)) + 490] = (arg1 / 10^12) - (arg1 * avaiRate / 10^16)
        emit Redeem(address rg1, uint256 rg2, uint256 rg3):
                    mem[(4 * ceil32(return_data.size)) + 426 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
        stor1 = 1
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        mem[(4 * ceil32(return_data.size)) + 426] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 458] = arg1 * avaiRate / 10^16
        mem[(4 * ceil32(return_data.size)) + 490] = (arg1 / 10^12) - (arg1 * avaiRate / 10^16)
        emit Redeem(address rg1, uint256 rg2, uint256 rg3):
                    mem[(4 * ceil32(return_data.size)) + 426 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
        stor1 = 1
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'Cannot mint 0 AVAI'
    if arg1 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not usdcRate:
        revert with 0, 18
    if arg1 < 10000 * arg1 / usdcRate:
        revert with 0, 17
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if not usdcRate:
        revert with 0, 18
    require ext_code.size(avaiAddress)
    staticcall avaiAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1000000 * 10^18:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(usdcAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[ceil32(return_data.size) + 392] = 0
        call usdcAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 360] = arg1 - (10000 * arg1 / usdcRate)
            mem[ceil32(return_data.size) + 292] = 68
            mem[ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 392] = 32
            mem[ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(usdcAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 456 len 96] = 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0
            mem[ceil32(return_data.size) + 524] = 0
            call usdcAddress with:
               funct Mask(32, 224, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 488] == bool(mem[ceil32(return_data.size) + 488])
                    if not mem[ceil32(return_data.size) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(avaiAddress)
            call avaiAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^16 * arg1 / usdcRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Mint(msg.sender, 10^16 * arg1 / usdcRate, arg1 - (10000 * arg1 / usdcRate));
        else:
            mem[ceil32(return_data.size) + 292] = return_data.size
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
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(treasuryAddress)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg1 - (10000 * arg1 / usdcRate)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(usdcAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
            call usdcAddress with:
               funct Mask(32, 224, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(avaiAddress)
                call avaiAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^16 * arg1 / usdcRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Mint(msg.sender, 10^16 * arg1 / usdcRate, arg1 - (10000 * arg1 / usdcRate));
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 458
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489])
                    if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 42
                        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 558] = 'ot succeed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 458
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 462] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 494] = 10^16 * arg1 / usdcRate
                require ext_code.size(avaiAddress)
                call avaiAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 462 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 458] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 490] = 10^16 * arg1 / usdcRate
                mem[(4 * ceil32(return_data.size)) + 522] = arg1 - (10000 * arg1 / usdcRate)
                emit Mint(address rg1, uint256 rg2, uint256 rg3):
                          mem[(4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
    else:
        require ext_code.size(avaiAddress)
        staticcall avaiAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and hourlyLimit > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if stor157[block.timestamp / 3600] > !(10^16 * arg1 / usdcRate):
            revert with 0, 17
        if stor157[block.timestamp / 3600] + (10^16 * arg1 / usdcRate) > ext_call.return_data[0] * hourlyLimit / 10000:
            revert with 0, 'Too much AVAI minted this hour'
        if stor157[block.timestamp / 3600] > !(10^16 * arg1 / usdcRate):
            revert with 0, 17
        stor157[block.timestamp / 3600] += 10^16 * arg1 / usdcRate
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(usdcAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call usdcAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 328] = address(treasuryAddress)
            mem[(2 * ceil32(return_data.size)) + 360] = arg1 - (10000 * arg1 / usdcRate)
            mem[(2 * ceil32(return_data.size)) + 292] = 68
            mem[(2 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 392] = 32
            mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(usdcAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 456 len 96] = 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0
            mem[(2 * ceil32(return_data.size)) + 524] = 0
            call usdcAddress with:
               funct Mask(32, 224, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                    if not mem[(2 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(avaiAddress)
            call avaiAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^16 * arg1 / usdcRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Mint(msg.sender, 10^16 * arg1 / usdcRate, arg1 - (10000 * arg1 / usdcRate));
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(treasuryAddress)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1 - (10000 * arg1 / usdcRate)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(usdcAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
            call usdcAddress with:
               funct Mask(32, 224, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(treasuryAddress), arg1 - (10000 * arg1 / usdcRate), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(avaiAddress)
                call avaiAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^16 * arg1 / usdcRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Mint(msg.sender, 10^16 * arg1 / usdcRate, arg1 - (10000 * arg1 / usdcRate));
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 458
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 42
                        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 558] = 'ot succeed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 458
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 462] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 494] = 10^16 * arg1 / usdcRate
                require ext_code.size(avaiAddress)
                call avaiAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 462 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 458] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 490] = 10^16 * arg1 / usdcRate
                mem[(4 * ceil32(return_data.size)) + 522] = arg1 - (10000 * arg1 / usdcRate)
                emit Mint(address rg1, uint256 rg2, uint256 rg3):
                          mem[(4 * ceil32(return_data.size)) + 458 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96],
    stor1 = 1
}



}
