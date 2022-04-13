contract main {




// =====================  Runtime code  =====================


const REVISION = 1


uint256 stor0;
uint8 stor1;

function _fallback() payable {
    revert
}

function initialize() payable {
    if not stor1:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not stor1:
            stor1 = 1
            stor0 = 1
            stor1 = 0
}



}
